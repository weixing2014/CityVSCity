class CreateTranslators < ActiveRecord::Migration
  def change
    create_table :translators do |t|
      t.string :en
      t.string :cn
    end
  end
end
