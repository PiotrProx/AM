class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nickName
      t.string :name
      t.string :eMail
      t.integer :phoneNumber
      t.string :login
      t.string :password_digest

      t.timestamps
    end
  end
end
