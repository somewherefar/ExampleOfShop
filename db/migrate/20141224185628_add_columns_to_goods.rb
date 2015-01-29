class AddColumnsToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :name, :string
    add_column :goods, :buy_price, :float
    add_reference :goods, :category, index: true
  end
end
