class Patient < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :dob, :full_name, :gender, :mobile, :email
  validates :first_name , :last_name, :dob, :gender, :mobile, :presence => true
  validates :mobile, :numericality => { :only_integer => true }
  validates :mobile, :length => {:minimum => 10, :maximum => 11}
  validates :email , :format => {:with => /\w+@\w+\.\w+/}

  def name
  	first_name.to_s + " " + last_name.to_s
  end


end
