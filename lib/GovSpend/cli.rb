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
	end

	def menu
		puts "Menu - brings up this dialogue.
Agency List - brings up the list of available Agencies
Fiscal Year Search - will prompt for a Fiscal Year to search for the available Agencies active in that year
	(Optional) prompt to offer a quarterly search to narrow down options
Agency Search - will prompt for an Agency name to find and provide details for.
Quit - will exit this program."
	end

	def agency_list

	end

	def fiscal_year_search

	end

	def agency_search

	end

end
