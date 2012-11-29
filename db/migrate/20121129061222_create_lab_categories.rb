class CreateLabCategories < ActiveRecord::Migration
  def change
    create_table :lab_categories do |t|
      t.string :name
      t.string :description
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
