class VsController < ApplicationController

  def result
    city_country_host = params[:city_host]
    city_country_away = params[:city_away]

    @city_host, @country_host = City.extract_city_and_country( city_country_host )
    @city_away, @country_away = City.extract_city_and_country( city_country_away )

    @full_named_cities = City.list_of_city_and_country_full_names_cn

    @name_mappings = {}
    NameMapping.all.each do |element|
      @name_mappings[element.database_name_en.to_sym] = element.name_cn
    end
  rescue
    render vs_home_path

  end

  def home
    @city_host, @country_host = City.extract_city_and_country( "北京, 中国" )
    @city_away, @country_away = City.extract_city_and_country( "西雅图, 美国")
  end



  private



end
