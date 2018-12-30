require 'rubygems'
require 'httparty'
require 'pry'

class GovSpend::FiscalYearSearch
  include HTTParty
	base_uri "api.usaspending.gov"
	
	def self.fiscal_year_search
		#should return a list of all active agencies based on fy provided
		
		list = HTTParty.get('https://api.usaspending.gov/api/v2/references/toptier_agencies/')
    new = list.flatten(4)
    newnew = new.delete_at(0)
    list1= new.each do |array|
        array.keep_if {|k, v| k == "active_fy" || k == "agency_name"}
    end 
    list2 = list1.each do |array|
      array.each do |k, v|
        if k == "agency_name"
          puts "Agency: #{v}"
        elsif k == "active_fy"
          puts "Active Fiscal Year: #{v}"
         end
      end
    end
    
  #   list3 = list2.each do |array|
  #   array.select do |k, v| 
  #     k == "active_fy" || v == "#{year}"
  #     end 
  #   end
  #   binding.pry
  
  
   end


  
  
end