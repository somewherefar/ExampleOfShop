class AddColumnsToAccounts < ActiveRecord::Migration
  def change
    add_reference :accounts, :customer, index: true
  end
end
