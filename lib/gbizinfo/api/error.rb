module Gbizinfo
  module Api
    class Error < StandardError
      def self.from_response(response)
        klass =
          case response.status
          when 400      then Gbizinfo::Api::BadRequest
          when 401      then Gbizinfo::Api::Unauthorized
          when 403      then Gbizinfo::Api::Forbidden
          when 404      then Gbizinfo::Api::NotFound
          when 400..499 then Gbizinfo::Api::ClientError
          when 500      then Gbizinfo::Api::InternalServerError
          when 502      then Gbizinfo::Api::BadGateway
          when 503      then Gbizinfo::Api::ServiceUnavailable
          when 500..599 then Gbizinfo::Api::ServerError
          end
        klass&.new(response)
      end

      def initialize(response = nil)
        @response = response
        super(build_error_message)
      end

      private

      def build_error_message
        return nil if @response.nil?

        message =  "#{@response.env.method.upcase} #{@response.env.url}"
        message << " status_code: #{@response.status}" unless @response.status.nil?
        message << " body: #{@response.body}"          unless @response.body.nil?
        message
      end
    end

    # A 4xx class HTTP error occurred.
    class ClientError < Error
    end

    # A 400 HTTP error occurred.
    class BadRequest < ClientError
    end

    # A 401 HTTP error occurred.
    class Unauthorized < ClientError
    end

    # A 403 HTTP error occurred.
    class Forbidden < ClientError
    end

    # A 404 HTTP error occurred.
    class NotFound < ClientError
    end

    # A 5xx class HTTP error occurred.
    class ServerError < Error
    end

    # A 500 HTTP error occurred.
    class InternalServerError < ServerError
    end

    # A 502 HTTP error occurred.
    class BadGateway < ServerError
    end

    # A 503 HTTP error occurred.
    class ServiceUnavailable < ServerError
    end
  end
end
