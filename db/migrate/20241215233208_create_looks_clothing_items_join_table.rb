class CreateLooksClothingItemsJoinTable < ActiveRecord::Migration[7.2]
  def change
    create_join_table :looks, :clothing_items do |t|
      t.index :look_id
      t.index :clothing_item_id
    end
  end
end
