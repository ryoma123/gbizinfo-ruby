module Gbizinfo
  module Api
    module Endpoints
      module HojinUpdateInfoProcurement
        #
        # Returns the procurement information added or updated within a given period.
        #
        # @option options [String] :from
        #   Start date to retrieve the corporate information for, expressed as yyyyMMdd.
        # @option options [String] :to
        #   End date to retrieve the corporate information for, expressed as yyyyMMdd.
        # @option options [String] :limit
        #   Number of pages in search results.
        # @see https://info.gbiz.go.jp/hojin/swagger-ui.html
        def hojin_update_info_procurement(options = {})
          throw ArgumentError.new('Required arguments :from missing') if options[:from].nil?
          throw ArgumentError.new('Required arguments :to missing') if options[:to].nil?
          get('hojin/updateInfo/procurement', options)
        end
      end
    end
  end
end
