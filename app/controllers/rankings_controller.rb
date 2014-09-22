class RankingsController < ApplicationController
  def index
    @cities = JSON.parse(City.searchable_cities(:average_monthly_disposable_salary_after_tax,
                                                :apartment_one_bedroom_in_city_centre,
                                                :apartment_one_bedroom_outside_of_centre,
                                                :apartment_three_bedrooms_in_city_centre,
                                                :apartment_three_bedrooms_outside_of_centre,
                                                :price_per_square_meter_to_buy_apartment_in_city_centre,
                                                :price_per_square_meter_to_buy_apartment_outside_of_centre,
                                                :basic_utilities_for_an_apartment,
                                                order_index: :average_monthly_disposable_salary_after_tax))
  end


end
