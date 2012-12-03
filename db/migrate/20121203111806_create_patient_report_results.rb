class CreatePatientReportResults < ActiveRecord::Migration
  def change
  	create_table :patient_report_results do |t|
  	  t.integer :patient_id
      t.integer :patient_reports_id
      t.integer :lab_category_id
      t.integer :lab_test_id
      t.string  :obtained_value
      t.timestamps
     end
  end
end
