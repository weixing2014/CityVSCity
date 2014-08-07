class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name_en
      t.string :name_cn
    end
  end
end
