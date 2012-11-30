class CreatePatientReports < ActiveRecord::Migration
  def change
    create_table :patient_reports do |t|
      t.integer :patient_id
      t.integer :lab_category_id
      t.integer :lab_test_id
      t.integer :obtained_value
      t.timestamps
    end
  end
end
