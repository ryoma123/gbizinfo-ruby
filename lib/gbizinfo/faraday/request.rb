module Gbizinfo
  module Faraday
    module Request
      def get(path, options = {})
        request(:get, path, options)
      end

      private

      def request(method, path, options)
        response = connection.send(method) do |request|
          request.url(path, options)
          request.options.merge!(options.delete(:request)) if options.key?(:request)
        end

        fail_or_return_response_body(response)
      end

      def fail_or_return_response_body(response)
        error = Gbizinfo::Api::Error.from_response(response)
        raise(error) if error

        response.body
      end
    end
  end
end
