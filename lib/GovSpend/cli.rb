#CLI Controller

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
				puts "heres a list of agencies"
			when "3"
				puts "blah"
			when "4"
				puts "whatever"
			when "5"
				goodbye
			end
	end

	def menu
		puts "Here's a detailed list of your options:
		"
		puts "(1) Menu - brings up this dialogue.
(2) Agency List - brings up the list of available Agencies
(3) Fiscal Year Search - will prompt for a Fiscal Year to search for the available Agencies active in that year
	(Optional) prompt to offer a quarterly search to narrow down options
(4) Agency Search - will prompt for an Agency name to find and provide details for.
(5) Quit - will exit this program."
	options
	end

	def agency_list

	end

	def fiscal_year_search

	end

	def agency_search

	end

	def goodbye
		puts "Have a nice day!"
	end


end
