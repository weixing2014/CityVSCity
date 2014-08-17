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
    t.decimal  ":pack_of_cigarettes_marlboro",                              precision: 10, scale: 2
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
