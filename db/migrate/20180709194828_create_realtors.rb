class CreateRealtors < ActiveRecord::Migration[5.2]
  def change
    create_table :realtors do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :firm
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
