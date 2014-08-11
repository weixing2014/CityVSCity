class AddNameMappings < ActiveRecord::Migration
    def up
      create_table :name_mappings do |t|
        t.string  :database_name_en
        t.string  :numbeo_item_name
        t.string  :name_cn
      end

      # populate the table
      NameMapping.create :database_name_en => "meal_in_inexpensive_restaurant", :numbeo_item_name => "Meal, Inexpensive Restaurant", :name_cn => "普通饭店一顿午饭"
      NameMapping.create :database_name_en => "meal_for_two_in_mid_range_restaurant_three_course", :numbeo_item_name => "Meal for 2, Mid-range Restaurant, Three-course", :name_cn => "中档餐厅两人正餐"
      NameMapping.create :database_name_en => "combo_meal_at_mcdonalds", :numbeo_item_name => "Combo Meal at McDonalds or Similar", :name_cn => "一份麦当劳套餐"
      NameMapping.create :database_name_en => "domestic_beer_half_liter_draught", :numbeo_item_name => "Domestic Beer (0.5 liter draught)", :name_cn => "本地啤酒一扎（500ml）"
      NameMapping.create :database_name_en => "restaurant_imported_beer_one_third_liter_bottle", :numbeo_item_name => "Imported Beer (0.33 liter bottle)", :name_cn => "小瓶进口啤酒（330ml）"
      NameMapping.create :database_name_en => "cappuccino_regular", :numbeo_item_name => "Cappuccino (regular)", :name_cn => "一杯卡布奇诺咖啡"
      NameMapping.create :database_name_en => "pepsi_coke_one_third_liter", :numbeo_item_name => "Coke/Pepsi (0.33 liter bottle)", :name_cn => "一听可乐（330ml）"
      NameMapping.create :database_name_en => "water_one_third_liter", :numbeo_item_name => "Water (0.33 liter bottle)", :name_cn => "一小瓶水（330ml）"
      NameMapping.create :database_name_en => "milk_regular_one_liter", :numbeo_item_name => "Milk (regular), (1 liter)", :name_cn => "普通牛奶（一升）"
      NameMapping.create :database_name_en => "loaf_of_fresh_white_bread_half_kilogram", :numbeo_item_name => "Loaf of Fresh White Bread (500g)", :name_cn => "新鲜面包（一斤）"
      NameMapping.create :database_name_en => "rice_white_one_kilogram", :numbeo_item_name => "Rice (white), (1kg)", :name_cn => "大米（一公斤）"
      NameMapping.create :database_name_en => "eggs_a_dozen", :numbeo_item_name => "Eggs (12)", :name_cn => "鸡蛋（12个）"
      NameMapping.create :database_name_en => "local_cheese_one_kilogram", :numbeo_item_name => "Local Cheese (1kg)", :name_cn => "本地奶酪（一公斤）"
      NameMapping.create :database_name_en => "chicken_breasts_boneless_skinless_one_kilogram", :numbeo_item_name => "Chicken Breasts (Boneless, Skinless), (1kg)", :name_cn => "鸡胸脯（一公斤，无骨去皮）"
      NameMapping.create :database_name_en => "apples_one_kilogram", :numbeo_item_name => "Apples (1kg)", :name_cn => "苹果（一公斤）"
      NameMapping.create :database_name_en => "oranges_one_kilogram", :numbeo_item_name => "Oranges (1kg)", :name_cn => "桔子（一公斤）"
      NameMapping.create :database_name_en => "tomato_one_kilogram", :numbeo_item_name => "Tomato (1kg)", :name_cn => "西红柿（一公斤）"
      NameMapping.create :database_name_en => "Lettuce (1 head)", :numbeo_item_name => "lettuce_one_head", :name_cn => "莴苣（一颗）"
      NameMapping.create :database_name_en => "water_one_and_a_half_liter_bottle", :numbeo_item_name => "Water (1.5 liter bottle)", :name_cn => "纯净水（1.5升装）"
      NameMapping.create :database_name_en => "bottle_of_wine_mid_range", :numbeo_item_name => "Bottle of Wine (Mid-Range)", :name_cn => "中档瓶装红酒"
      NameMapping.create :database_name_en => "domestic_beer_half_liter_bottle", :numbeo_item_name => "Domestic Beer (0.5 liter bottle)", :name_cn => "本地啤酒一瓶（500ml）"
      NameMapping.create :database_name_en => "market_imported_beer_one_third_liter_bottle", :numbeo_item_name => "Imported Beer (0.33 liter bottle)", :name_cn => "小瓶进口啤酒（330ml）"
      NameMapping.create :database_name_en => ":pack_of_cigarettes_marlboro", :numbeo_item_name => "Pack of Cigarettes (Marlboro", :name_cn => "万宝路香烟（一包）"
      NameMapping.create :database_name_en => "one_way_ticket_local_transport", :numbeo_item_name => "One-way Ticket (Local Transport)", :name_cn => "单程公交车票"
      NameMapping.create :database_name_en => "monthly_pass_regular_price", :numbeo_item_name => "Monthly Pass (Regular Price)", :name_cn => "普通月票"
      NameMapping.create :database_name_en => "taxi_start_normal_tariff", :numbeo_item_name => "Taxi Start (Normal Tariff)", :name_cn => "出租车起步价"
      NameMapping.create :database_name_en => "taxi_one_kilometer_normal_tariff", :numbeo_item_name => "Taxi 1km (Normal Tariff)", :name_cn => "出租车每公里"
      NameMapping.create :database_name_en => "taxi_one_hour_waiting_normal_tariff", :numbeo_item_name => "Taxi 1hour Waiting (Normal Tariff)", :name_cn => "出租车等待1小时"
      NameMapping.create :database_name_en => "gasoline_one_liter", :numbeo_item_name => "Gasoline (1 liter)", :name_cn => "汽油（一升）"
      NameMapping.create :database_name_en => "volkswagen_golf_trendline", :numbeo_item_name => "Volkswagen Golf 1.4 90 KW Trendline (Or Equivalent New Car)", :name_cn => "大众高尔夫"
      NameMapping.create :database_name_en => "basic_utilities_for_an_apartment", :numbeo_item_name => "Basic (Electricity, Heating, Water, Garbage) for 85m2 Apartment", :name_cn => "85平方米公寓水电暖气物业费（每月）"
      NameMapping.create :database_name_en => "one_min_of_prepaid_mobile_tariff", :numbeo_item_name => "1 min. of Prepaid Mobile Tariff Local (No Discounts or Plans)", :name_cn => "手机话费（1分钟）"
      NameMapping.create :database_name_en => "internet_six_m_cable", :numbeo_item_name => "Internet (6 Mbps, Unlimited Data, Cable/ADSL)", :name_cn => "6M宽带（每月）"
      NameMapping.create :database_name_en => "fitness_club_monthly_fee_for_one_adult", :numbeo_item_name => "Fitness Club, Monthly Fee for 1 Adult", :name_cn => "健身卡（每月）"
      NameMapping.create :database_name_en => "tennis_court_rent_one_hour_on_weekend", :numbeo_item_name => "Tennis Court Rent (1 Hour on Weekend)", :name_cn => "网球场租金（1小时）"
      NameMapping.create :database_name_en => "cinema_international_release_one_seat", :numbeo_item_name => "Cinema, International Release, 1 Seat", :name_cn => "电影票（1张）"
      NameMapping.create :database_name_en => "a_pair_of_jeans_levis_501", :numbeo_item_name => "1 Pair of Jeans (Levis 501 Or Similar)", :name_cn => "李维斯501牛仔裤（1条）"
      NameMapping.create :database_name_en => "a_summer_dress_in_a_chain_store_zara_hm", :numbeo_item_name => "1 Summer Dress in a Chain Store (Zara, H&M, ...)", :name_cn => "Zara夏季女装（一件）"
      NameMapping.create :database_name_en => "a_pair_of_nike_shoes", :numbeo_item_name => "1 Pair of Nike Shoes", :name_cn => "耐克鞋（一双）"
      NameMapping.create :database_name_en => "a_pair_of_men_leather_shoes", :numbeo_item_name => "1 Pair of Men Leather Shoes", :name_cn => "普通男士皮鞋（一双）"
      NameMapping.create :database_name_en => "apartment_one_bedroom_in_city_centre", :numbeo_item_name => "Apartment (1 bedroom) in City Centre", :name_cn => "市中心一居室公寓月租金"
      NameMapping.create :database_name_en => "apartment_one_bedroom_outside_of_centre", :numbeo_item_name => "Apartment (1 bedroom) Outside of Centre", :name_cn => "非中心区域一居室公寓月租金"
      NameMapping.create :database_name_en => "apartment_three_bedrooms_in_city_centre", :numbeo_item_name => "Apartment (3 bedrooms) in City Centre", :name_cn => "市中心三居室公寓月租金"
      NameMapping.create :database_name_en => "apartment_three_bedrooms_outside_of_centre", :numbeo_item_name => "Apartment (3 bedrooms) Outside of Centre", :name_cn => "非市中心区域三居室公寓月租金"
      NameMapping.create :database_name_en => "price_per_square_meter_to_buy_apartment_in_city_centre", :numbeo_item_name => "Price per Square Meter to Buy Apartment in City Centre", :name_cn => "市中心每平方米房价"
      NameMapping.create :database_name_en => "price_per_square_meter_to_buy_apartment_outside_of_centre", :numbeo_item_name => "Price per Square Meter to Buy Apartment Outside of Centre", :name_cn => "非市中心每平方米房价"
      NameMapping.create :database_name_en => "average_monthly_disposable_salary_after_tax", :numbeo_item_name => "Average Monthly Disposable Salary (After Tax)", :name_cn => "税后平均公资"
      NameMapping.create :database_name_en => "mortgage_interest_rate_in_percentages_yearly", :numbeo_item_name => "Mortgage Interest Rate in Percentages (%), Yearly", :name_cn => "抵押贷款年利率（%）"

    end

    def down
      drop_table :name_mappings
    end

end
