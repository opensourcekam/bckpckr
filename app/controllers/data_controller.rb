class DataController < ApplicationController
 def get_catalog
  # include HTTParty
  @results = HTTParty.get("//rubygems.org/api/v1/versions/httparty.json")
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
