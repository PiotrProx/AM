class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.boolean :isEmployee
      t.boolean :isRepairBuisness
      t.boolean :isUser

      t.timestamps
    end
  end
end
