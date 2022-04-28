class CreateRepairOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :repair_offers do |t|
      t.integer :ID_User
      t.integer :ID_ForumPost
      t.string :content
      t.string :description

      t.timestamps
    end
  end
end
