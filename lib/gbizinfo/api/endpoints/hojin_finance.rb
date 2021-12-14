module Gbizinfo
  module Api
    module Endpoints
      module HojinFinance
        #
        # Returns the financial information of a given corporate number.
        #
        # @param [String] :corporate_number
        #   A corporate number.
        # @see https://info.gbiz.go.jp/hojin/swagger-ui.html
        def hojin_finance(corporate_number:)
          throw ArgumentError.new('Required arguments :corporate_number missing') if corporate_number.nil?
          get("hojin/#{corporate_number}/finance")
        end
      end
    end
  end
end
