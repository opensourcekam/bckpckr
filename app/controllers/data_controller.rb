class DataController < ApplicationController
#  PLEASE DON'T MODIFY, THIS WORKS PRETTY WELL SO FAR, ONLY THING THAT DOESN'T WORK IS JSON PARSING
#    require 'json'
#   require 'pp'
#   class Party
#     include HTTParty
#   end
#   def get_catalog
#  value = {
#   request: {
#     passengers: {
#       adultCount: '1'
#     },
#     slice: [
#       {
#         origin: 'BOS',
#         destination: 'LAX',
#         date: '2015-12-21'
#       },
#       {
#         origin: 'LAX',
#         destination: 'BOS',
#         date: '2015-12-21'
#       }
#     ]
#   }
# }
# #     parsed = JSON.parse(value)
#     @results = pp Party.post("https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyCtPUW5gzsCX6mgMLCCFSU0bmFFvjl0B2k", value)
#    #any instance in action is immediately given to view
#   end
  #   AIzaSyDh-1ynhECeZsfhlXwi6Eqwh8HjUCrIDXM <- Old,nonfunctioning Api key
# @response = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
# @result = @response.body
# respond_to do |format|
#    format.json { render :json => JSON.parse(@result) }
#    format.html { render "index.html.erb" }
#   end

  def get_catalog
    @results = HTTParty.get("http://rubygems.org/api/v1/versions/httparty.json")
  end

end