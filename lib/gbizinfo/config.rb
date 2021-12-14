module Gbizinfo
  module Config
    extend self

    ATTRIBUTES = %i[
      user_agent
      endpoint
      token
      adapter
    ].freeze

    attr_accessor(*Config::ATTRIBUTES)

    def reset
      self.endpoint = 'https://info.gbiz.go.jp/hojin/v1/'
      self.user_agent = "gBizINFO Ruby Client/#{Gbizinfo::VERSION}"
      self.token = nil
      self.adapter = ::Faraday.default_adapter
    end
  end

  class << self
    def configure
      block_given? ? yield(Config) : Config
    end

    def config
      Config
    end
  end
end

Gbizinfo::Config.reset
