NOTES.md

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. Force that to build the CLI interface 
5. Stub out the interface
6. Start making things real
7. Discover objects
8. Program


- A command line interface for searching through Government contracts spending data, using the USA Spending API 

user types govspend

Hi! Welcome to GovSpend.

What would you like to do? 
I accept: 
	"1" - Menu
	"2" - Agency List
	"3" - Fiscal Year Search
	"4" - Agency Search
	"5" - Quit

*Menu*
Menu - brings up this dialogue.
Agency List - brings up the list of available Agencies
Fiscal Year Search - will prompt for a Fiscal Year to search for the available Agencies active in that year
	(Optional) prompt to offer a quarterly search to narrow down options
Agency Search - will prompt for an Agency name to find and provide details for.
Quit - will exit this program.

*Agency List* 
pulls list of Agency names 
/api/v2/references/toptier_agencies/
results i want to show: 
	'agency_name'
(maybe) then prompts user to input the name of an Agency they would like to see spending details for (Agency Search)

*Fiscal Year Search*
/api/v2/references/toptier_agencies/
results i want to show: 
	'agency_name'
	'active_fq'
fy must be four digit year format: YYYY
prompts user for a Fiscal Year to pull all Agencies active during that year
(maybe) then prompts user to input the name of an Agency they would like to see spending details for (y/n optional)

*Agency Search*
/api/v2/references/toptier_agencies/
results i want to show: 
	'agency_name'
	'active_fy'
	'active_fq'
	'obligated_amount'
prompts user for Agency name they would like to see spending details for

