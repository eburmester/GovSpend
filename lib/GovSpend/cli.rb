#CLI Controller


class GovSpend::CLI

	def call
		puts "Hi! Welcome to GovSpend."
		make_list
		options
	end

	def options
		puts "\nWhat would you like to do?"
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
				agency_search
			when "4"
				goodbye
			end
	end

	def menu
		puts "\nHere's a detailed list of your options:
		"
		puts "(1) Menu - brings up this dialogue
(2) Agency List - brings up the list of available Agencies
(3) Agency Search - will list details associated with the Agency provided
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
    agency_search
	end

	def agency_search
    puts "\nEnter the Agency name you would like more details on or '1' to return to the Menu."
    input = gets.strip.split.map(&:capitalize).join(' ')
    if input == '1'
        menu
    elsif agency = GovSpend::AgencyList.search(input)
      details(agency)
    else 
      puts "Please enter a valid agency name or '2' to see the list of active Agencies."
      input = gets.strip.downcase
      if input == '2'
        agency_list
      else 
        agency_search
      end
    end
	end
	
	def details(agency)
	  puts "\nAgency Name: #{agency.agency_name}"
	  puts "Agency ID: #{agency.agency_id}"
	  puts "Active Fiscal Year: #{agency.active_fy}"
	  puts "Obligated Amount: #{agency.obligated_amount}"
	  puts "Percentage of Total Budget Authority: #{agency.percentage_of_total_budget_authority}"
	  
	  puts "\nWould you like to search for another Agency? ('yes' or 'no')"
	  input = gets.strip.downcase
	  if input == 'yes'
	    agency_search
	  elsif input == 'no'
	    goodbye
	  else 
	end
	end

	def goodbye
		puts "\nOK, have a nice day!"
	end


end
