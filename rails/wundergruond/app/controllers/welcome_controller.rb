class WelcomeController < ApplicationController
  def index
  @states = %w(HI AK CA OR WA ID UT NV AZ NM CO WY MT ND SD NB KS OK TX LA AR MO IA MN WI IL IN MI OH KY TN MS AL GA FL SC NC VA WV DE MD PA NY NJ CT RI MA VT NH ME DC )
    
   @states.sort!

    if params[:city] != nil
       params[:city].gsub! " ", "_"
    end
    
    if params[:city] != nil
        response = HTTParty.get("http://api.wunderground.com/api/e9c834dc30112303/geolookup/conditions/q/#{params[:state]}/#{params[:city]}.json")
    if response["location"] == nil
      redirect_to index_path   
    else
       
    @location = response["location"]["city"]
    @temp_f = response["current_observation"]["temp_f"]
    @temp_c = response["current_observation"]["temp_c"]
    @weather_icon = response["current_observation"]["icon_url"]
    @weather_words = response["current_observation"]["weather"]
    @forecast_link = response["current_observation"]["forecast_url"]
    @real_feel = response["current_observation"]["feelslike_f"]
    end
  end

  if @weather_words == "Clear"
    @url = "http://..."
  elsif @weather_words == "Cloudy"
    @url = "http://..."
  elsif @weather_words == "Flurries"

  elsif @weather_words == "Fog"

  elsif @weather_words == "Rain"

  elsif @weather_words == "Snow"

  elsif @weather_words == "Sunny"

  elsif @weather_words == "Thunderstorm"

  elsif @weather_words == "Overcast"

  elsif @weather_words == "Scattered Clouds"

  else @url = "http://..."
  end
end

  def test
  response = HTTParty.get("http://api.wunderground.com/api/e9c834dc30112303/geolookup/conditions/q/NC/Asheville.json")
  
  @location = response['location']['city']
  @temp_f = response['current_observation']['temp_f']
  @temp_c = response['current_observation']['temp_c']
  @weather_icon = response['current_observation']['icon_url']
  @weather_words = response['current_observation']['weather'] 
  @forecast_link = response['current_observation']['forecast_url']
  @real_feel = response['current_observation']['feelslike_f']
  end
end
end