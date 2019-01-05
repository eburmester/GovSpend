#require 'pry'
class GovSpend::API 
  
  @@list = []
  
  def api_call
    list = HTTParty.get('https://api.usaspending.gov/api/v2/references/toptier_agencies/')
    new = list.flatten(4)
    newnew = new.delete_at(0)
    @@list << newnew
    #binding.pry
  end 
  
  def list_all
    @@list 
  end
    
   
end