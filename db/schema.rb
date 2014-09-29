# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140811084209) do

  create_table "cities", force: true do |t|
    t.string   "name_en"
    t.string   "name_cn"
    t.boolean  "searchable",                                                                         default: true
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "meal_in_inexpensive_restaurant",                            precision: 10, scale: 2
    t.decimal  "meal_for_two_in_mid_range_restaurant_three_course",         precision: 10, scale: 2
    t.decimal  "combo_meal_at_mcdonalds",                                   precision: 10, scale: 2
    t.decimal  "domestic_beer_half_liter_draught",                          precision: 10, scale: 2
    t.decimal  "cappuccino_regular",                                        precision: 10, scale: 2
    t.decimal  "pepsi_coke_one_third_liter",                                precision: 10, scale: 2
    t.decimal  "water_one_third_liter",                                     precision: 10, scale: 2
    t.decimal  "milk_regular_one_liter",                                    precision: 10, scale: 2
    t.decimal  "loaf_of_fresh_white_bread_half_kilogram",                   precision: 10, scale: 2
    t.decimal  "rice_white_one_kilogram",                                   precision: 10, scale: 2
    t.decimal  "eggs_a_dozen",                                              precision: 10, scale: 2
    t.decimal  "local_cheese_one_kilogram",                                 precision: 10, scale: 2
    t.decimal  "chicken_breasts_boneless_skinless_one_kilogram",            precision: 10, scale: 2
    t.decimal  "apples_one_kilogram",                                       precision: 10, scale: 2
    t.decimal  "oranges_one_kilogram",                                      precision: 10, scale: 2
    t.decimal  "tomato_one_kilogram",                                       precision: 10, scale: 2
    t.decimal  "potato_one_kilogram",                                       precision: 10, scale: 2
    t.decimal  "lettuce_one_head",                                          precision: 10, scale: 2
    t.decimal  "water_one_and_a_half_liter_bottle",                         precision: 10, scale: 2
    t.decimal  "bottle_of_wine_mid_range",                                  precision: 10, scale: 2
    t.decimal  "domestic_beer_half_liter_bottle",                           precision: 10, scale: 2
    t.decimal  "imported_beer_one_third_liter_bottle",                      precision: 10, scale: 2
    t.decimal  "pack_of_cigarettes_marlboro",                               precision: 10, scale: 2
    t.decimal  "one_way_ticket_local_transport",                            precision: 10, scale: 2
    t.decimal  "monthly_pass_regular_price",                                precision: 10, scale: 2
    t.decimal  "taxi_start_normal_tariff",                                  precision: 10, scale: 2
    t.decimal  "taxi_one_kilometer_normal_tariff",                          precision: 10, scale: 2
    t.decimal  "taxi_one_hour_waiting_normal_tariff",                       precision: 10, scale: 2
    t.decimal  "gasoline_one_liter",                                        precision: 10, scale: 2
    t.decimal  "volkswagen_golf_trendline",                                 precision: 10, scale: 2
    t.decimal  "basic_utilities_for_an_apartment",                          precision: 10, scale: 2
    t.decimal  "one_min_of_prepaid_mobile_tariff",                          precision: 10, scale: 2
    t.decimal  "internet_six_m_cable",                                      precision: 10, scale: 2
    t.decimal  "fitness_club_monthly_fee_for_one_adult",                    precision: 10, scale: 2
    t.decimal  "tennis_court_rent_one_hour_on_weekend",                     precision: 10, scale: 2
    t.decimal  "cinema_international_release_one_seat",                     precision: 10, scale: 2
    t.decimal  "a_pair_of_jeans_levis_501",                                 precision: 10, scale: 2
    t.decimal  "a_summer_dress_in_a_chain_store_zara_hm",                   precision: 10, scale: 2
    t.decimal  "a_pair_of_nike_shoes",                                      precision: 10, scale: 2
    t.decimal  "a_pair_of_men_leather_shoes",                               precision: 10, scale: 2
    t.decimal  "apartment_one_bedroom_in_city_centre",                      precision: 10, scale: 2
    t.decimal  "apartment_one_bedroom_outside_of_centre",                   precision: 10, scale: 2
    t.decimal  "apartment_three_bedrooms_in_city_centre",                   precision: 10, scale: 2
    t.decimal  "apartment_three_bedrooms_outside_of_centre",                precision: 10, scale: 2
    t.decimal  "price_per_square_meter_to_buy_apartment_in_city_centre",    precision: 10, scale: 2
    t.decimal  "price_per_square_meter_to_buy_apartment_outside_of_centre", precision: 10, scale: 2
    t.decimal  "average_monthly_disposable_salary_after_tax",               precision: 10, scale: 2
    t.decimal  "mortgage_interest_rate_in_percentages_yearly",              precision: 10, scale: 2
    t.decimal  "contributors",                                              precision: 10, scale: 2
  end

  add_index "cities", ["a_pair_of_jeans_levis_501"], name: "a_pair_of_jeans_levis_501_index", using: :btree
  add_index "cities", ["a_pair_of_men_leather_shoes"], name: "a_pair_of_men_leather_shoes_index", using: :btree
  add_index "cities", ["a_pair_of_nike_shoes"], name: "a_pair_of_nike_shoes_index", using: :btree
  add_index "cities", ["a_summer_dress_in_a_chain_store_zara_hm"], name: "a_summer_dress_in_a_chain_store_zara_hm_index", using: :btree
  add_index "cities", ["apartment_one_bedroom_in_city_centre"], name: "apartment_one_bedroom_in_city_centre_index", using: :btree
  add_index "cities", ["apartment_one_bedroom_outside_of_centre"], name: "apartment_one_bedroom_outside_of_centre_index", using: :btree
  add_index "cities", ["apartment_three_bedrooms_in_city_centre"], name: "apartment_three_bedrooms_in_city_centre_index", using: :btree
  add_index "cities", ["apartment_three_bedrooms_outside_of_centre"], name: "apartment_three_bedrooms_outside_of_centre_index", using: :btree
  add_index "cities", ["apples_one_kilogram"], name: "apples_one_kilogram_index", using: :btree
  add_index "cities", ["average_monthly_disposable_salary_after_tax"], name: "average_monthly_disposable_salary_after_tax_index", using: :btree
  add_index "cities", ["basic_utilities_for_an_apartment"], name: "basic_utilities_for_an_apartment_index", using: :btree
  add_index "cities", ["bottle_of_wine_mid_range"], name: "bottle_of_wine_mid_range_index", using: :btree
  add_index "cities", ["cappuccino_regular"], name: "cappuccino_regular_index", using: :btree
  add_index "cities", ["chicken_breasts_boneless_skinless_one_kilogram"], name: "chicken_breasts_boneless_skinless_one_kilogram_index", using: :btree
  add_index "cities", ["cinema_international_release_one_seat"], name: "cinema_international_release_one_seat_index", using: :btree
  add_index "cities", ["combo_meal_at_mcdonalds"], name: "combo_meal_at_mcdonalds_index", using: :btree
  add_index "cities", ["contributors"], name: "contributors_index", using: :btree
  add_index "cities", ["domestic_beer_half_liter_bottle"], name: "domestic_beer_half_liter_bottle_index", using: :btree
  add_index "cities", ["domestic_beer_half_liter_draught"], name: "domestic_beer_half_liter_draught_index", using: :btree
  add_index "cities", ["eggs_a_dozen"], name: "eggs_a_dozen_index", using: :btree
  add_index "cities", ["fitness_club_monthly_fee_for_one_adult"], name: "fitness_club_monthly_fee_for_one_adult_index", using: :btree
  add_index "cities", ["gasoline_one_liter"], name: "gasoline_one_liter_index", using: :btree
  add_index "cities", ["imported_beer_one_third_liter_bottle"], name: "imported_beer_one_third_liter_bottle_index", using: :btree
  add_index "cities", ["internet_six_m_cable"], name: "internet_six_m_cable_index", using: :btree
  add_index "cities", ["lettuce_one_head"], name: "lettuce_one_head_index", using: :btree
  add_index "cities", ["loaf_of_fresh_white_bread_half_kilogram"], name: "loaf_of_fresh_white_bread_half_kilogram_index", using: :btree
  add_index "cities", ["local_cheese_one_kilogram"], name: "local_cheese_one_kilogram_index", using: :btree
  add_index "cities", ["meal_for_two_in_mid_range_restaurant_three_course"], name: "meal_for_two_in_mid_range_restaurant_three_course_index", using: :btree
  add_index "cities", ["meal_in_inexpensive_restaurant"], name: "meal_in_inexpensive_restaurant_index", using: :btree
  add_index "cities", ["milk_regular_one_liter"], name: "milk_regular_one_liter_index", using: :btree
  add_index "cities", ["monthly_pass_regular_price"], name: "monthly_pass_regular_price_index", using: :btree
  add_index "cities", ["mortgage_interest_rate_in_percentages_yearly"], name: "mortgage_interest_rate_in_percentages_yearly_index", using: :btree
  add_index "cities", ["name_en", "country_id"], name: "index_cities_on_name_en_and_country_id", using: :btree
  add_index "cities", ["one_min_of_prepaid_mobile_tariff"], name: "one_min_of_prepaid_mobile_tariff_index", using: :btree
  add_index "cities", ["one_way_ticket_local_transport"], name: "one_way_ticket_local_transport_index", using: :btree
  add_index "cities", ["oranges_one_kilogram"], name: "oranges_one_kilogram_index", using: :btree
  add_index "cities", ["pack_of_cigarettes_marlboro"], name: "pack_of_cigarettes_marlboro_index", using: :btree
  add_index "cities", ["pepsi_coke_one_third_liter"], name: "pepsi_coke_one_third_liter_index", using: :btree
  add_index "cities", ["potato_one_kilogram"], name: "potato_one_kilogram_index", using: :btree
  add_index "cities", ["price_per_square_meter_to_buy_apartment_in_city_centre"], name: "price_per_square_meter_to_buy_apartment_in_city_ce_index", using: :btree
  add_index "cities", ["price_per_square_meter_to_buy_apartment_outside_of_centre"], name: "price_per_square_meter_to_buy_apartment_outside_of_index", using: :btree
  add_index "cities", ["rice_white_one_kilogram"], name: "rice_white_one_kilogram_index", using: :btree
  add_index "cities", ["taxi_one_hour_waiting_normal_tariff"], name: "taxi_one_hour_waiting_normal_tariff_index", using: :btree
  add_index "cities", ["taxi_one_kilometer_normal_tariff"], name: "taxi_one_kilometer_normal_tariff_index", using: :btree
  add_index "cities", ["taxi_start_normal_tariff"], name: "taxi_start_normal_tariff_index", using: :btree
  add_index "cities", ["tennis_court_rent_one_hour_on_weekend"], name: "tennis_court_rent_one_hour_on_weekend_index", using: :btree
  add_index "cities", ["tomato_one_kilogram"], name: "tomato_one_kilogram_index", using: :btree
  add_index "cities", ["volkswagen_golf_trendline"], name: "volkswagen_golf_trendline_index", using: :btree
  add_index "cities", ["water_one_and_a_half_liter_bottle"], name: "water_one_and_a_half_liter_bottle_index", using: :btree
  add_index "cities", ["water_one_third_liter"], name: "water_one_third_liter_index", using: :btree

  create_table "countries", force: true do |t|
    t.string "name_en"
    t.string "name_cn"
  end

  create_table "name_mappings", force: true do |t|
    t.string "database_name_en"
    t.string "numbeo_item_name"
    t.string "name_cn"
  end

end
