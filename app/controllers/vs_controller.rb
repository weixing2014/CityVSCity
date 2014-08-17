class VsController < ApplicationController
  def result
    city_host_str = params[:city_host]
    city_away_str = params[:city_away]
    @city_host = City.find_by_name_cn(params[:city_host].partition(',').first)
    @city_away = City.find_by_name_cn(params[:city_away].partition(',').first)
    @full_named_cities = City.list_of_city_and_country_full_names_cn

    @name_mappings = {}
    NameMapping.all.each do |element|
      @name_mappings[element.database_name_en] = element.name_cn
    end

  end

  def home
    @full_named_cities = City.list_of_city_and_country_full_names_cn
  end

  def basics

  end

  private



end
