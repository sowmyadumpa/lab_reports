class LabTest < ActiveRecord::Base
   belongs_to :lab_category
   attr_accessible :name, :range, :description, :lab_category_id
end
