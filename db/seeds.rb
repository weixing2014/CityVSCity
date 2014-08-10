# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CityDataScraper'

countries = Scraper.countries

Scraper.countries.each do |country_en|
  country_cn = Scraper.translate_from_en_to_ch(country_en)
  Country.where(name_en:country_en).first_or_create!(name_en:country_en, name_cn:country_cn)
  Scraper.cities(country_en).each do |city_en|
    city_cn = Scraper.translate_from_en_to_ch(city_en)
    City.where(name_en:city_en).first_or_create!(name_en:city_en,name_cn:city_cn, country:Country.where(name_en:country_en).first)

  end
end

