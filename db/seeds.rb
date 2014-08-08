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
  Translator.where(en:country_en).first_or_create!(en:country_en, cn:country_cn)
  Country.where(name_en:country_en).first_or_create!(name_en:country_en)
  Scraper.cities(country_en).each do |city_en|
    city_cn = Scraper.translate_from_en_to_ch(city_en)
    Translator.where(en:city_en).first_or_create!(en:city_en, cn:city_cn)
    City.where(name_en:city_en).first_or_create!(name_en:city_en,country:Country.where(name_en:country_en).first)

  end
end

