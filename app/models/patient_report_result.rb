class PatientReportResult < ActiveRecord::Base
 attr_accessible :patient_id, :lab_category_id, :lab_test_id, :obtained_value
 belongs_to :patient_report, :foreign_key => :patient_report_id
 #belongs_to :patient, :lab_category, :lab_test

end