class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
