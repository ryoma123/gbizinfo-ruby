module Gbizinfo
  module Api
    module Endpoints
      module HojinSearch
        #
        # Search for corporate information registered in gBizINFO.
        #
        # @option options [String] :corporate_number
        #   A corporate number.
        # @option options [String] :name
        #   A corporate name.
        # @option options [String] :exist_flg
        #   A corporate activity information.
        # @option options [String] :corporate_type
        #   A corporate type.
        # @option options [String] :prefecture
        #   A location prefecture.
        # @option options [String] :city
        #   A location city.
        # @option options [String] :capital_stock_from
        #   A lower limit of capital.
        # @option options [String] :capital_stock_to
        #   An upper limit of capital.
        # @option options [String] :employee_number_from
        #   A lower limit of the number of employees.
        # @option options [String] :employee_number_to
        #   A maximum number of employees.
        # @option options [String] :founded_year
        #   A year of establishment.
        # @option options [String] :sales_area
        #   A business area.
        # @option options [String] :business_item
        #   A business items.
        # @option options [String] :unified_qualification
        #   A government unified participation qualification.
        # @option options [String] :net_sales_summary_of_business_results_from
        #   A lower limit of sales.
        # @option options [String] :net_sales_summary_of_business_results_to
        #   An upper limit of sales.
        # @option options [String] :net_income_loss_summary_of_business_results_from
        #   A lower limit of net income or net loss.
        # @option options [String] :net_income_loss_summary_of_business_results_to
        #   An upper limit of net income or net loss.
        # @option options [String] :total_assets_summary_of_business_results_from
        #   A lower limit of total assets.
        # @option options [String] :total_assets_summary_of_business_results_to
        #   A set an upper limit for total assets.
        # @option options [String] :name_major_shareholders
        #   A major shareholder name.
        # @option options [String] :average_continuous_service_years
        #   An average number of years of continuous service.
        # @option options [String] :average_age
        #   An average age of employees.
        # @option options [String] :month_average_predetermined_overtime_hours
        #   A monthly average overtime hours.
        # @option options [String] :female_workers_proportion
        #   A percentage of female workers among workers.
        # @option options [String] :year
        #   The year.
        # @option options [String] :ministry
        #   A ministry in charge.
        # @option options [String] :source
        #   A source.
        # @option options [String] :page
        #   A number of pages in search results.
        # @option options [String] :limit
        #   A number of search results per page.
        # @see https://info.gbiz.go.jp/hojin/swagger-ui.html
        def hojin_search(options = {})
          get('hojin', options)
        end
      end
    end
  end
end
