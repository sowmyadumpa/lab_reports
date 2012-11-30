class LabCategory < ActiveRecord::Base  
   has_many :lab_tests
   attr_accessible :name, :description
end
