class City < ActiveRecord::Base

  belongs_to :country
  default_scope {where("searchable is true")}
  def self.list_of_city_and_country_full_names_cn
    full_named_cities = self.all.inject([]){|result, element| result << (element[:name_cn].force_encoding("utf-8")+", "+element.country[:name_cn].force_encoding("utf-8"))}
    return full_named_cities

  end

  def self.default_scope
    return self.where(searchable:true).order(contributors: :desc)
  end
end
