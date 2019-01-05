require 'rubygems'
require 'httparty'
require 'pry'

class GovSpend::AgencyList
	include HTTParty
	base_uri "api.usaspending.gov"
	
	@@all = []
	
	attr_accessor :agency_name, :active_fy, :obligated_amount, :active_fq, :percentage_of_total_budget_authority, :abbreviation, :current_total_budget_authority_amount, :budget_authority_amount, :outlay_amount, :agency_id 
	
	def initialize(agency_list)
	  agency_list.each {|k, v| self.send(("#{k}="), v)}
	  @@all << self  
	end
	
	def self.create_from_collection(agency_list)
    agency_list.each do |agency_hash|
      self.new(agency_hash)
    end
  end
  
  def search(name)
    self.all_agencies.find {|agency| agency.agency_name == name}
  end
	
	def self.all_agencies
		@@all
  end
  
end
