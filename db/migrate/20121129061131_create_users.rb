class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
     t.string :first_name
     t.string :last_name
     t.string :full_name
     t.string :email
     t.string :mobile
     t.string :role
     t.string :password
     t.string :password_confirmation
     t.timestamps
    end
  end
end
