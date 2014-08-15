# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CityDataScraper'

countries = CityDataScraper.countries

CityDataScraper.countries[0..10].each do |country_en|
  country_cn = CityDataScraper.translate_from_en_to_ch(country_en)
  Country.where(name_en:country_en).first_or_create!(name_en:country_en, name_cn:country_cn)
  CityDataScraper.cities(country_en).each do |city_en|
    city_cn = CityDataScraper.translate_from_en_to_ch(city_en)
    city = City.where(name_en:city_en).first_or_initialize(name_en:city_en,name_cn:city_cn, country:Country.where(name_en:country_en).first)

    cost_of_living = CityDataScraper.city_cost_of_living_hash(country_en, city_en)
    cost_of_living_for_database = {}
    cost_of_living.each do |key, value|
      if !NameMapping.where(numbeo_item_name:key).first.nil? and !NameMapping.where(numbeo_item_name:key).first["database_name_en"].nil?
      database_name_en = NameMapping.where(numbeo_item_name:key).first["database_name_en"].to_sym
      end
      if !database_name_en.nil?
        cost_of_living_for_database[database_name_en] = cost_of_living[key].to_f
      end
      city.update_attributes(cost_of_living_for_database)
    end
  end
end

