class VsController < ApplicationController

  include IndexName

  def result
    city_host_id = params[:city_host_id]
    city_away_id = params[:city_away_id]

    @city_host, @country_host = City.extract_city_and_country( city_id:city_host_id )
    @city_away, @country_away = City.extract_city_and_country( city_id:city_away_id )

    @name_mappings = {}
    NameMapping.all.each do |element|
      @name_mappings[element.database_name_en.to_sym] = element.name_cn
    end
  rescue
    render vs_home_path

  end

  def home
    @city_host, @country_host = City.extract_city_and_country( city_id:412 )
    @city_away, @country_away = City.extract_city_and_country( city_id:2821 )
  end

  private
end
