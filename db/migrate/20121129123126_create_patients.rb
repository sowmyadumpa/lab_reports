class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string  :last_name
      t.string  :full_name
      t.string  :email
      t.string  :mobile
      t.datetime :dob
  	  t.integer  :age
	    t.string  :gender      
      t.timestamps
    end
  end
end
