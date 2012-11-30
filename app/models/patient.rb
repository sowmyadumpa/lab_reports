class Patient < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :dob, :full_name, :gender
  validates :first_name , :last_name, :dob, :gender, :presence => true

  def name
  	first_name.to_s + " " + last_name.to_s
  end


end
