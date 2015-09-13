class EntriesController < ApplicationController
  def create
    budget = params[:entry][:budget]
    date = params[:entry][:date]
    destination = params[:entry][:destination]
    origin = params[:entry][:origin]
    url = create_url(budget, date, destination, origin)
    places = make_api_call(url)
    render text: places
  end

  private
  def make_api_call(url)
    auth = "hkvtx2n96vp1nyg4:6Vs9jJbD="
    client_id = "V1:hkvtx2n96vp1nyg4:6Vs9jJbD"
    token = "T1RLAQIjdJk8E4o7xEuiiUEggX32Tm/yWxDXZTIuKa+09RUYwSPVu8kxAACgfMsB3PS5PwT+zm+Gu2oBrpf4Q5yZ70FCiQcoVasmj0wTChuJ+DtbmTr9MDQGcbjs9TsMlr+uGGTZJ1swZwFXIrk51lxTEtaBS4LUf/zmYFMrsON6j/hjC/YzB3bo2/hdY2xKVKZFOIhKuEhGkjvZIONK1fXCFsXzGWvHJq2ZWfiGbkzkd366OcyqMdhIAYwMPEsMSJDZH9MKthJMRQx/vA**"
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
