class CityController < ApplicationController
  def index
    @city, @country = City.extract_city_and_country(city_id: 412)
  end
  def result
    city_id = params[:city_id]
    @city, @country = City.extract_city_and_country(city_id:city_id)
  rescue
    render city_index_path
  end
  private
end
