require_relative 'endpoints/hojin'
require_relative 'endpoints/hojin_certification'
require_relative 'endpoints/hojin_commendation'
require_relative 'endpoints/hojin_finance'
require_relative 'endpoints/hojin_patent'
require_relative 'endpoints/hojin_procurement'
require_relative 'endpoints/hojin_search'
require_relative 'endpoints/hojin_subsidy'
require_relative 'endpoints/hojin_update_info'
require_relative 'endpoints/hojin_update_info_certification'
require_relative 'endpoints/hojin_update_info_commendation'
require_relative 'endpoints/hojin_update_info_finance'
require_relative 'endpoints/hojin_update_info_patent'
require_relative 'endpoints/hojin_update_info_procurement'
require_relative 'endpoints/hojin_update_info_subsidy'
require_relative 'endpoints/hojin_update_info_workplace'
require_relative 'endpoints/hojin_workplace'

module Gbizinfo
  module Api
    module Endpoints
      include Hojin
      include HojinCertification
      include HojinCommendation
      include HojinFinance
      include HojinPatent
      include HojinProcurement
      include HojinSearch
      include HojinSubsidy
      include HojinUpdateInfo
      include HojinUpdateInfoCertification
      include HojinUpdateInfoCommendation
      include HojinUpdateInfoFinance
      include HojinUpdateInfoPatent
      include HojinUpdateInfoProcurement
      include HojinUpdateInfoSubsidy
      include HojinUpdateInfoWorkplace
      include HojinWorkplace
    end
  end
end
