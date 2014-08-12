require 'nokogiri'
require 'open-uri'
require 'csv'

  module CityDataScraper
    COST_OF_LIVING_URL = "http://www.numbeo.com/cost-of-living/"
    COUNTRY_URL = "http://www.numbeo.com/cost-of-living/country_result.jsp?country=%s"
    CITY_COST_OF_LIVING_URL = "http://www.numbeo.com/cost-of-living/city_result.jsp?displayCurrency=CNY&country=%s&city=%s"
    GOOGLE_TRANSLATOR = "https://translate.google.com//translate_a/single?client=t&sl=en&tl=zh-CN&hl=en&dt=bd&dt=ex&dt=ld&dt=md&dt=qc&dt=rw&dt=rm&dt=ss&dt=t&dt=at&dt=sw&ie=UTF-8&oe=UTF-8&ssel=0&tsel=0&q=%s"

    def self.countries
      doc = Nokogiri::HTML(open(COST_OF_LIVING_URL))
      countries = []
      doc.css('#country option').each do |country|
        countries << country['value'] unless country['value'].empty?
      end
      return countries
    end

    def self.cities(country)
      cities = []
      country = country.gsub(' ','+')
      doc = Nokogiri::HTML(open(COUNTRY_URL % country))
      doc.css("#city option").each do |city|
        cities << city['value'] unless city['value'].empty?
      end
      return cities
    end

    def self.city_cost_of_living_hash(country, city)
      cost_of_living = {}
      country = country.gsub(' ','+')
      city = city.gsub(' ','+')
      doc = Nokogiri::HTML(open(CITY_COST_OF_LIVING_URL % [country, city]))
      doc.css("tr").each do |tr|
        cost_of_living[tr.css('td').first.text] = tr.css('td')[1].text.gsub(/[^0-9.]/, "") if tr.css('td')[1]&&tr.css('td').first&&tr.css('td')[1].text.gsub(/[^0-9.]/, "") =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/&&!tr.css('td').first.text.delete!("\n")
      end

      return cost_of_living
    end

    def self.cost_of_living_items
      cost_of_living = city_cost_of_living_hash('china','beijing').keys
    end

    def self.cost_of_living_fields

    end

    def self.translate_from_en_to_ch(place)

      begin
        content = open(GOOGLE_TRANSLATOR % place.gsub(' ','+')).read
        offset = content.index "\""
        content = content[offset+1.. -1]
        ending = content.index "\""
        content = content[0, ending]
      rescue
        content = place
      ensure
      return content
      end
    end
  end

