class User < ActiveRecord::Base
 attr_accessible :first_name, :last_name, :role, :full_name, :email, :password, :password_confirmation

def valid_password?(password_val)
	self.password == password_val
end

def admin?
	self.role == "admin"
end
end
