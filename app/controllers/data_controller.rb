class DataController < ApplicationController
  def new
    @entry = Entry.new
  end

  def update
  end


#   def createurls
#   @url = "https://api.test.sabre.com/v2/shop/flights/fares?origin=" + ABB + "&destination=" + ABB + "&lengthofstay=" + NUM +  (optional + "&departuredate=" + YYYY-MM-DD) + "&pointofsalecountry=US"
#   end

#   def get_catalog
#     @results = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
#   end

end