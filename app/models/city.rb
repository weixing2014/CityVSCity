#encoding: utf-8

class City < ActiveRecord::Base

  belongs_to :country
  scope :contributors_desc, lambda { order(contributors: :desc) }
  def self.searchable_city_and_country
    return @city_name_list_cn = Country.joins(:cities).select("CONCAT(cities.id,'') as city_id,  countries.name_cn, cities.searchable, CONCAT(cities.name_cn, ', ', countries.name_cn) as text").where("cities.searchable = 1").order("cities.contributors desc")
  end

  def self.searchable_cities(*params, order_index: :contributors, order_by: :desc)
    params = ['id','countries.name_cn as country_name_cn', 'cities.name_cn as city_name_cn'].concat(params).uniq
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

  def position(index)
    cities = City.select("id, searchable, #{index}").where("cities.searchable = 1").order("#{index} desc")
    cities.map(&:id).index(self.id)
  end

end
