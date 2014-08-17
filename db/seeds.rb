# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CityDataScraper'

#countries = CityDataScraper.countries
countries = ["United Kingdom"]

countries.each do |country_en|
  country_cn = CityDataScraper.translate_from_en_to_ch(country_en)
  Country.where(name_en:country_en).first_or_create!(name_en:country_en, name_cn:country_cn)
  cities = CityDataScraper.cities(country_en)

  cities.each do |city_en|
    city_cn = CityDataScraper.translate_from_en_to_ch(city_en.partition(',').first)
    cost_of_living = CityDataScraper.city_cost_of_living_hash(country_en, city_en)
    cost_of_living_for_database = {}
    cost_of_living.each do |key, value|
      if !NameMapping.where(numbeo_item_name:key).first.nil? and !NameMapping.where(numbeo_item_name:key).first["database_name_en"].nil?
        database_name_en = NameMapping.where(numbeo_item_name:key).first["database_name_en"].to_sym
      end
      if !database_name_en.nil?
        cost_of_living_for_database[database_name_en] = cost_of_living[key].to_f
      end
    end
    if (!cost_of_living_for_database[:contributors].nil? and cost_of_living_for_database[:contributors]>=10)
      cost_of_living_for_database[:searchable] = true
    else
      cost_of_living_for_database[:searchable] = false
    end

    city = City.where(name_en:city_en, country:Country.where(name_en:country_en).first).first
    if city.nil?
      cost_of_living_for_database[:name_en]=city_en
      cost_of_living_for_database[:name_cn]=city_cn
      cost_of_living_for_database[:country]=Country.where(name_en:country_en).first
      city = City.create!(cost_of_living_for_database)
    else
      city.update_attributes(cost_of_living_for_database)
    end

  end
end

