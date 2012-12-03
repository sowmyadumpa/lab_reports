class CreatePatientReports < ActiveRecord::Migration
  def change
    create_table :patient_reports do |t|
      t.integer :patient_id
      t.string  :referred_by
      t.timestamps
    end
  end
end
