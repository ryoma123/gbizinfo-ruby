module Gbizinfo
  module Api
    module Endpoints
      module HojinCertification
        #
        # Returns basic corporate information of a given corporate number.
        #
        # @param [String] :corporate_number
        #   A corporate number.
        # @see https://info.gbiz.go.jp/hojin/swagger-ui.html
        def hojin_certification(corporate_number:)
          throw ArgumentError.new('Required arguments :corporate_number missing') if corporate_number.nil?
          get("hojin/#{corporate_number}/certification")
        end
      end
    end
  end
end
