require 'rubygems'
require 'httparty'
#require 'pry'

class GovSpend::AgencyList
	include HTTParty
	base_uri "api.usaspending.gov"
	
	def self.all_agencies
		#should return a list of all active agencies
		
		list = HTTParty.get('https://api.usaspending.gov/api/v2/references/toptier_agencies/')
    
    new = list.flatten(4)
    newnew = new.delete_at(0)
    new.each do |array|
      array.each do |key, value|
        if key == "agency_name"
          puts "#{value}"
        end
      end
    end
  end
  
end
