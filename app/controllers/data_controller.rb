class DataController < ApplicationController
 def get_catalog
   # include HTTParty
   ## @results = HTTParty.get("https://rubygems.org/api/v1/versions/httparty.json")
   require 'json'
   value = '{
  "request": {
    "passengers": {
      "adultCount": 1
    },
    "slice": [
      {
        "origin": "BOS",
        "destination": "LAX",
        "date": "YYYY-MM-DD"
      },
      {
        "origin": "LAX",
        "destination": "BOS",
        "date": "YYYY-MM-DD"
      }
    ]
  }
}'
   parsed = JSON.parse(value)
   @results = HTTParty.post("https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyDh-1ynhECeZsfhlXwi6Eqwh8HjUCrIDXM", parsed)
   #binding.pry
   #any instance in action is immediately given to view
  end
# @response = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
# @result = @response.body
# respond_to do |format|
#    format.json { render :json => JSON.parse(@result) }
#    format.html { render "index.html.erb" }
#   end
# curl -d @request.json --header "Content-Type: application/json" https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyDh-1ynhECeZsfhlXwi6Eqwh8HjUCrIDXM
end
