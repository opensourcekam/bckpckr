class DataController < ApplicationController
 def get_catalog
   # include HTTParty
    @results = HTTParty.get("https://rubygems.org/api/v1/versions/httparty.json")
   # @results = HTTParty.get("https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyDh-1ynhECeZsfhlXwi6Eqwh8HjUCrIDXM")
   #binding.pry
   #any instance in action is immediately given to view
  end
# @response = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
# @result = @response.body
# respond_to do |format|
#    format.json { render :json => JSON.parse(@result) }
#    format.html { render "index.html.erb" }
#   end
end
