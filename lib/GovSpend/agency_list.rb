require 'rubygems'
require 'httparty'
#require 'pry'

class GovSpend::AgencyList
	include HTTParty
	base_uri "api.usaspending.gov"
	
	def self.all_agencies
		#should return a list of all active agencies
	
    new.each do |array|
      array.each do |key, value|
        if key == "agency_name"
          puts "#{value}"
        end
      end
    end
  end
  
end
