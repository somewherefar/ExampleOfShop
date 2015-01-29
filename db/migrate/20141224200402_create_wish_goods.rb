class CreateWishGoods < ActiveRecord::Migration
  def change
    create_table :wish_goods do |t|
      t.references :wish, index: true
      t.references :good, index: true

      t.timestamps
    end
  end
end
