class City < ActiveRecord::Base

  belongs_to :country
  default_scope { order(contributors: :desc) }
  scope :searchables, lambda {where("searchable is true")}
  def self.list_of_city_and_country_full_names_cn
    full_named_cities =  ActiveRecord::Base.connection.execute("select CONCAT(cities.name_cn, ', ', countries.name_cn) as city_country_name from cities, countries where cities.country_id=countries.id")
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
