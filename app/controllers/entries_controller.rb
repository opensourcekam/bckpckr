class EntriesController < ApplicationController
  def create
    render text: params.to_s
  end
  
  def create_url
      @url = "https://api.test.sabre.com/v2/shop/flights/fares?origin=" + ABB + "&destination=" + ABB + "&lengthofstay=" + NUM +  (optional + "&departuredate=" + YYYY-MM-DD) + "&pointofsalecountry=US"
end
