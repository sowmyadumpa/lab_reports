class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string  :last_name
      t.string  :full_name
      t.datetime :dob
  	  t.integer  :age
	    t.string  :gender      
      t.timestamps
    end
  end
end
