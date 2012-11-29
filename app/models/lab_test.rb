class LabTest < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :lab_category
end
