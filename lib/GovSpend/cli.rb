#CLI Controller
#require 'pry'

class GovSpend::CLI

	def call
		puts "Hi! Welcome to GovSpend."
		options
	end

	def options
		puts "What would you like to do?"
		puts "I accept: 
		1 - Menu 
		2 - Agency List 
		3 - Fiscal Year Search 
		4 - Agency Search
		5 - Quit"
		input = gets.strip
			
			case input 
			when "1"
				menu
			when "2"
				agency_list
			when "3"
				fiscal_year_search
			when "4"
				puts "whatever"
			when "5"
				goodbye
			end
	end

	def menu
		puts "Here's a detailed list of your options:
		"
		puts "(1) Menu - brings up this dialogue
(2) Agency List - brings up the list of available Agencies
(3) Fiscal Year Search - will prompt for a Fiscal Year to search for the available Agencies active in that year
(4) Agency Search - will prompt for an Agency name to find and provide details for
(5) Quit - will exit this program"
	options
	end

	def agency_list
    puts "Agency List:"
    GovSpend::API.list_all 
    
    puts "\nWhich agency would you like details on?"
    #agency_search
	end

	def fiscal_year_search
	  puts "Please enter a year in the format YYYY."
    input = gets.strip
    
    #active_fy = GovSpend::FiscalYearSearch.fiscal_year_search
    GovSpend::FiscalYearSearch.fiscal_year_search.map {|array| array.select {|k, v| v == "2017"}}
  end

	def agency_search

	end

	def goodbye
		puts "Have a nice day!"
	end


end
