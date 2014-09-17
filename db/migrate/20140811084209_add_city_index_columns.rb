#encoding: utf-8

class AddCityIndexColumns < ActiveRecord::Migration
  def change

    NameMapping.all.map{|row| row.database_name_en.to_sym}.each do |title|
      if !City.column_names.include? title.to_s
        add_column :cities, title, :decimal, precision:10, scale:2
      end
    end


  end
end
