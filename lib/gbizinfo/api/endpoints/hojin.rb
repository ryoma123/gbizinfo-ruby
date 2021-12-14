module Gbizinfo
  module Api
    module Endpoints
      module Hojin
        #
        # Returns the basic information of a given corporate number.
        #
        # @param [String] :corporate_number
        #   A corporate number.
        # @see https://info.gbiz.go.jp/hojin/swagger-ui.html
        def hojin(corporate_number:)
          throw ArgumentError.new('Required arguments :corporate_number missing') if corporate_number.nil?
          get("hojin/#{corporate_number}")
        end
      end
    end
  end
end
