class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :customer, index: true
    add_column :orders, :total_price, :float
  end
end
