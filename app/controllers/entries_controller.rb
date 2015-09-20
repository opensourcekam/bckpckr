class EntriesController < ApplicationController
  def create
    budget = params[:entry][:budget]
    date = params[:entry][:date]
    destination = params[:entry][:destination]
    origin = params[:entry][:origin]
    url = create_url(budget, date, destination, origin)
    my_hash = make_api_call(url)
    @origin = my_hash['OriginLocation']
    @destination = my_hash['DestinationLocation']
    @lowestFare = my_hash['FareInfo'][0]['LowestFare']['Fare']
    @lowestDirectFare = my_hash['FareInfo'][0]['LowestNonStopFare']['Fare']
    @leaving = ['FareInfo'][0]['DepartureDateTime']

    #@h = my_hash.to_json.to_s
    #render text: @places
    #render text: @h
  end

  def events
    @json = ActiveSupport::JSON.decode(open(@places).read)
  end


  private
  def make_api_call(url)
    # KEY = V1:l56og6m35jm06ak9:DEVCENTER:EXT
    # secrete = 5VkhG0aO
    # token = "T1RLAQIo4yJzltAHpZ/QOaXR16HKCpnj3hCHOwgnR9OXImlCm8qF6luFAACgK4CVwAXCuxZ//OxuwjOH/FafkRjunj0iF/Zgu/0h4/lSWgETsOZHp9pSbzCUzLU9QrOCaeyxg7ZzNWP2I8uIzjBWYKQWwdi2L5V3bwEcyr7idOvTDz5YS28kFH5J8wOvKLe7jA3EeqJT4yQB3Ry2iHoVV1twlo//0obHhhqxPB+Iwbl/tamFanBs91Qu0xubvqlw002ldUNqN33ljXlDbA**"
    auth = "NVZraEcwYU8="
    client_id = "VjE6bDU2b2c2bTM1am0wNmFrOTpERVZDRU5URVI6RVhU"
    token = "T1RLAQIo4yJzltAHpZ/QOaXR16HKCpnj3hCHOwgnR9OXImlCm8qF6luFAACgK4CVwAXCuxZ//OxuwjOH/FafkRjunj0iF/Zgu/0h4/lSWgETsOZHp9pSbzCUzLU9QrOCaeyxg7ZzNWP2I8uIzjBWYKQWwdi2L5V3bwEcyr7idOvTDz5YS28kFH5J8wOvKLe7jA3EeqJT4yQB3Ry2iHoVV1twlo//0obHhhqxPB+Iwbl/tamFanBs91Qu0xubvqlw002ldUNqN33ljXlDbA**"
    response = HTTParty.get(url, headers: { "Authorization" => "Bearer #{token}" })
    hash = JSON.parse(response.body)
  end

  def create_url(budget, date, destination, origin)
      url = "https://api.test.sabre.com/v2/shop/flights/fares?origin=" + origin + "&destination=" + destination + "&maxfare=" + budget + "&pointofsalecountry=US"
    if date
      url+= "&departuredate=" + date
    end
      url + "&lengthofstay=4"
  end
end
