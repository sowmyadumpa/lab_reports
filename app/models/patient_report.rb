class PatientReport < ActiveRecord::Base
  attr_accessible :patient_id, :referred_by, :created_at, :patient_report_results_attributes
  belongs_to :patient
  has_many :patient_report_results, :foreign_key => :patient_reports_id
  accepts_nested_attributes_for :patient_report_results, :allow_destroy => true
end
