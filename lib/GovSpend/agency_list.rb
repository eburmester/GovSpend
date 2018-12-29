require 'httparty'

class GovSpend::AgencyList
	include HTTParty
	base_uri "api.usaspending.gov"
	
	def self.all_agencies
		#should return a list of all active agencies
		
		agency_list = self.class.get('/api/v2/references/toptier_agencies/')
		agency_list
	end

end
