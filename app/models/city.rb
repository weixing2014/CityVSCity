class City < ActiveRecord::Base

  belongs_to :country
  default_scope { order(contributors: :desc) }
  scope :searchables, lambda {where("searchable is true")}
  def self.searchable_city_and_country_json
    return @full_named_cities = Country.joins(:cities).select("cities.id as id, countries.name_cn, cities.searchable, CONCAT(cities.name_cn, ', ', countries.name_cn) as text").where("cities.searchable = 1").order("cities.contributors desc").to_json
  end

  def self.extract_city_and_country( city_country = ",")
    country = Country.where(name_cn: city_country.partition(',').last.strip).first
    city = where(name_cn: city_country.partition(',').first.strip, country_id: country.id).first
    return city, country
  end

  def city_and_country
    return self.name_cn+", "+ self.country[:name_cn]
  end

end
