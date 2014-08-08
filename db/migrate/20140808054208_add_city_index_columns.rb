class AddCityIndexColumns < ActiveRecord::Migration
  def change
    add_column :cities, :meal_in_inexpensive_restaurant, :decimal, precision:10, scale:2
    add_column :cities, :meal_for_two_in_mid_range_restaurant_three_course, :decimal, precision:10, scale:2
    add_column :cities, :combo_meal_at_mcdonalds, :decimal, precision:10, scale:2
    add_column :cities, :domestic_beer_half_liter_draught, :decimal, precision:10, scale:2
    add_column :cities, :restaurant_imported_beer_one_third_liter_bottle, :decimal, precision:10, scale:2
    add_column :cities, :cappuccino_regular, :decimal, precision:10, scale:2
    add_column :cities, :pepsi_coke_one_third_liter, :decimal, precision:10, scale:2
    add_column :cities, :water_one_third_liter, :decimal, precision:10, scale:2

    add_column :cities, :milk_regular_one_liter, :decimal, precision:10, scale:2
    add_column :cities, :loaf_of_fresh_white_bread_half_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :rice_white_one_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :eggs_a_dozen, :decimal, precision:10, scale:2
    add_column :cities, :local_cheese_one_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :chicken_breasts_boneless_skinless_one_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :apples_one_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :oranges_one_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :tomato_one_kilogram, :decimal, precision:10, scale:2
    add_column :cities, :lettuce_one_head, :decimal, precision:10, scale:2
    add_column :cities, :water_one_and_a_half_liter_bottle, :decimal, precision:10, scale:2
    add_column :cities, :bottle_of_wine_mid_range, :decimal, precision:10, scale:2
    add_column :cities, :domestic_beer_half_liter_bottle, :decimal, precision:10, scale:2
    add_column :cities, :market_imported_beer_one_third_liter_bottle, :decimal, precision:10, scale:2
    add_column :cities, :pack_of_cigarettes_marlboro, :decimal, precision:10, scale:2

    add_column :cities, :one_way_ticket_local_transport, :decimal, precision:10, scale:2
    add_column :cities, :monthly_pass_regular_price, :decimal, precision:10, scale:2
    add_column :cities, :taxi_start_normal_tariff, :decimal, precision:10, scale:2
    add_column :cities, :taxi_one_kilometer_normal_tariff, :decimal, precision:10, scale:2
    add_column :cities, :taxi_one_hour_waiting_normal_tariff, :decimal, precision:10, scale:2
    add_column :cities, :gasoline_one_liter, :decimal, precision:10, scale:2
    add_column :cities, :volkswagen_golf_trendline, :decimal, precision:10, scale:2

    add_column :cities, :fitness_club_monthly_fee_for_one_adult, :decimal, precision:10, scale:2
    add_column :cities, :tennis_court_rent_one_hour_on_weekend, :decimal, precision:10, scale:2
    add_column :cities, :cinema_international_release_one_seat, :decimal, precision:10, scale:2

    add_column :cities, :a_pair_of_jeans_levis_501, :decimal, precision:10, scale:2
    add_column :cities, :a_summer_dress_in_a_chain_store_zara_hm, :decimal, precision:10, scale:2
    add_column :cities, :a_pair_of_nike_shoes, :decimal, precision:10, scale:2
    add_column :cities, :a_pair_of_men_leather_shoes, :decimal, precision:10, scale:2


  end
end
