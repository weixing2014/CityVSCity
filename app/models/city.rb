#encoding: utf-8

class City < ActiveRecord::Base

  belongs_to :country
  scope :contributors_desc, lambda { order(contributors: :desc) }
  scope :searchables, lambda {where("searchable is true")}
  def self.searchable_city_and_country_json
    return @city_name_list_cn_json = Country.joins(:cities).select("CONCAT(cities.id,'') as city_id,  countries.name_cn, cities.searchable, CONCAT(cities.name_cn, ', ', countries.name_cn) as text").where("cities.searchable = 1").order("cities.contributors desc").to_json
  end

  def self.searchable_cities(*params, order_index: :contributors, order_by: :desc)
    params = ['id','countries.name_cn as country_name_cn', 'cities.name_cn as city_name_cn','cities.apartment_one_bedroom_in_city_centre'].concat(params).uniq
    @cities_cn_json = Country.joins(:cities).select(params).where("cities.searchable = 1").order("cities.#{order_index.to_s} #{order_by.to_s}").to_json
  end
  def self.extract_city_and_country( city_id: 412)
    city = find(city_id)
    country = city.country
    return city, country
  end

  def city_and_country
    return name_cn+", "+ self.country[:name_cn]
  end

end
