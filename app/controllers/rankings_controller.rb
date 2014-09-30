class RankingsController < ApplicationController
  def house
    @cities = JSON.parse(City.searchable_cities(:apartment_one_bedroom_in_city_centre,
                                                :apartment_one_bedroom_outside_of_centre,
                                                :apartment_three_bedrooms_in_city_centre,
                                                :apartment_three_bedrooms_outside_of_centre,
                                                :price_per_square_meter_to_buy_apartment_in_city_centre,
                                                :price_per_square_meter_to_buy_apartment_outside_of_centre,
                                                :basic_utilities_for_an_apartment))
  end

  def food_restaurant
    @cities = JSON.parse(City.searchable_cities(:meal_in_inexpensive_restaurant,
                                                :meal_for_two_in_mid_range_restaurant_three_course,
                                                :combo_meal_at_mcdonalds,
                                                :domestic_beer_half_liter_draught,
                                                :cappuccino_regular,
                                                :pepsi_coke_one_third_liter,
                                                :water_one_third_liter))
  end

  def food_daily
    @cities = JSON.parse(City.searchable_cities(:milk_regular_one_liter,
                                                :loaf_of_fresh_white_bread_half_kilogram,
                                                :rice_white_one_kilogram,
                                                :eggs_a_dozen,
                                                :local_cheese_one_kilogram,
                                                :chicken_breasts_boneless_skinless_one_kilogram,
                                                :apples_one_kilogram,
                                                :oranges_one_kilogram,
                                                :tomato_one_kilogram,
                                                :potato_one_kilogram,
                                                :lettuce_one_head,
                                                :water_one_and_a_half_liter_bottle,
                                                :domestic_beer_half_liter_bottle,
                                                :imported_beer_one_third_liter_bottle,
                                                :pack_of_cigarettes_marlboro
                         ))
  end

  def clothes
    @cities = JSON.parse(City.searchable_cities(:a_pair_of_jeans_levis_501,
                                                :a_summer_dress_in_a_chain_store_zara_hm,
                                                :a_pair_of_nike_shoes,
                                                :a_pair_of_men_leather_shoes
                         ))
  end

  def transport
    @cities = JSON.parse(City.searchable_cities(:one_way_ticket_local_transport,
                                                :monthly_pass_regular_price,
                                                :taxi_start_normal_tariff,
                                                :taxi_one_kilometer_normal_tariff,
                                                :gasoline_one_liter,
                                                :volkswagen_golf_trendline
                         ))

  end

  def miscellaneous
    @cities = JSON.parse(City.searchable_cities(:average_monthly_disposable_salary_after_tax,
                                                :one_min_of_prepaid_mobile_tariff,
                                                :internet_six_m_cable,
                                                :fitness_club_monthly_fee_for_one_adult,
                                                :tennis_court_rent_one_hour_on_weekend,
                                                :cinema_international_release_one_seat,
                         ))
  end
end
