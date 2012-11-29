class LabCategories < ActiveRecord::Base
  # attr_accessible :title, :body
   has_many :lab_tests
end
