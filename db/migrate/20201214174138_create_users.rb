class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :profile_pic
      t.string :kingdom
      
      t.timestamps
    end
  end
end
