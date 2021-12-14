module Gbizinfo
  class Client
    include Faraday::Connection
    include Faraday::Request
    include Api::Endpoints

    attr_accessor(*Config::ATTRIBUTES)

    def initialize(options = {})
      Gbizinfo::Config::ATTRIBUTES.each do |key|
        send("#{key}=", options.fetch(key, Gbizinfo.config.send(key)))
      end

      @token ||= Gbizinfo.config.token
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
end
