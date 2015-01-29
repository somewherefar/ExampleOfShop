class CreatePurchasedGoods < ActiveRecord::Migration
  def change
    create_table :purchased_goods do |t|
      t.references :order, index: true
      t.references :good, index: true

      t.timestamps
    end
  end
end
