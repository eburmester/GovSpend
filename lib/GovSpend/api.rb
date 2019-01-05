require 'pry'
class GovSpend::API 
  
  @@list = []
  
  def self.api_call
    list = HTTParty.get('https://api.usaspending.gov/api/v2/references/toptier_agencies/')
    new = list.flatten(4)
    newnew = new.delete_at(0)
    new.each do |hash|
      @@list << hash 
    end
  end 
  
  def self.list_all
    @@list 
  end
  
  
    
   
end