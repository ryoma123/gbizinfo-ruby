module Gbizinfo
  module Faraday
    module Connection
      private

      def connection
        @connection ||=
          begin
            headers = {
              'Accept' => 'application/json'
            }

            headers['User-Agent'] = user_agent if user_agent
            headers['X-hojinInfo-api-token'] = token if token

            ::Faraday.new(endpoint, headers: headers) do |builder|
              builder.request :url_encoded
              builder.response :json
              builder.adapter ::Faraday.default_adapter
            end
          end
      end
    end
  end
end
