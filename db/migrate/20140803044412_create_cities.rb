class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name_en
      t.string :name_cn
      t.boolean :searchable
      t.integer :country_id
      t.timestamps
    end
  end
end
