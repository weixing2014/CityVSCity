class VsController < ApplicationController

  def result
    city_host_id = params[:city_host_id]
    city_away_id = params[:city_away_id]

    @city_host, @country_host = City.extract_city_and_country( city_id:city_host_id )
    @city_away, @country_away = City.extract_city_and_country( city_id:city_away_id )


  rescue
    render vs_home_path

  end

  def home
    @city_host, @country_host = City.extract_city_and_country( city_id:412 )
    @city_away, @country_away = City.extract_city_and_country( city_id:2821 )
  end

  private
end
