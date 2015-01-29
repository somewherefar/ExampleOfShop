class AddColumnsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :full_name, :string
    add_column :customers, :email, :string
    add_column :customers, :password, :string
    add_column :customers, :address, :text
    add_column :customers, :telephone, :string
  end
end
