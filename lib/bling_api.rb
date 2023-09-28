# frozen_string_literal: true

require_relative 'bling_api/version'
require 'net/http'
require 'json'
require 'uri'
require 'httparty'

module BlingApi
  class Client
    include HTTParty
    BASE_URL = 'https://bling.com.br/Api/v2'

    def initialize(api_key)
      @api_key = api_key
    end

    def get_products(options = {})
      url = "#{BASE_URL}/produtos/json/"
      params = { apikey: @api_key }.merge(options)
      response = self.class.get(url, query: params)

      if response.success?
        JSON.parse(response.body)
      else
        raise "Error: #{response.code} - #{response.message}"
      end
    end
  end
end
