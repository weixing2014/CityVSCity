#encoding: utf-8

class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name_en
      t.string :name_cn
      t.boolean :searchable, default:true
      t.integer :country_id
      t.timestamps
    end
    add_index :cities, [:name_en, :country_id]

  end
end
