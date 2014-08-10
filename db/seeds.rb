# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CityDataScraper'
require 'ItemFieldMapping'

countries = CityDataScraper.countries

CityDataScraper.countries.each do |country_en|
  country_cn = CityDataScraper.translate_from_en_to_ch(country_en)
  Country.where(name_en:country_en).first_or_create!(name_en:country_en, name_cn:country_cn)
  CityDataScraper.cities(country_en).each do |city_en|
    city_cn = CityDataScraper.translate_from_en_to_ch(city_en)
    City.where(name_en:city_en).first_or_create!(name_en:city_en,name_cn:city_cn, country:Country.where(name_en:country_en).first)

    cost_of_living = CityDataScraper.city_cost_of_living_hash(country_en, city_en)
    cost_of_living_for_database = {}
    cost_of_living.each do |key, value|
      field = ItemFieldMapping.field_for(table: :cities, item:key)
      if !field.nil?
        cost_of_living_for_database[field] = cost_of_living[key]
      end
    end
    p cost_of_living_for_database
  end
end

