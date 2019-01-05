#CLI Controller
#require 'pry'

class GovSpend::CLI

	def call
		puts "Hi! Welcome to GovSpend."
		make_list
		options
	end

	def options
		puts "What would you like to do?"
		puts "I accept: 
		1 - Menu 
		2 - Agency List 
		3 - Agency Search
		4 - Quit"
		input = gets.strip
			
			case input 
			when "1"
				menu
			when "2"
				agency_list
			when "3"
				#agency_search
			when "4"
				goodbye
			end
	end

	def menu
		puts "Here's a detailed list of your options:
		"
		puts "(1) Menu - brings up this dialogue
(2) Agency List - brings up the list of available Agencies
(3) Agency Search - will prompt for an Agency name to find and provide details for
(4) Quit - will exit this program"
	options
	end
	
	def make_list
	  agency_array = GovSpend::API.list_all
    GovSpend::AgencyList.create_from_collection(agency_array)
  end

	def agency_list
    puts "\nAgency List:"
    GovSpend::AgencyList.all_agencies.each do |hash|
      puts "#{hash.agency_name}"
    end
    puts "\nWhich agency would you like details on?"
    #agency_search
	end

	def agency_search
    puts "\nPlease enter the Agency's name you would like more details on:"
    input = gets.strip.capitalize
    if input == 
	end

	def goodbye
		puts "Have a nice day!"
	end


end
