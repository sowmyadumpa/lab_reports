class PatientReport < ActiveRecord::Base
  attr_accessible :patient_id, :referred_by, :created_at
  belongs_to :patient
  has_many :patient_report_results
  accepts_nested_attributes_for :patient_report_results
end
