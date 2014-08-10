class VsController < ApplicationController
  def results

  end

  def home
    @full_named_cities = City.list_of_city_and_country_full_names_cn
  end

  def basics

  end

end
