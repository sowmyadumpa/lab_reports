class CreateLabTests < ActiveRecord::Migration
  def change
    create_table :lab_tests do |t|
      t.string :name
      t.string :description
      t.string :range
      t.integer :lab_category_id
      t.timestamps
    end
  end
end
