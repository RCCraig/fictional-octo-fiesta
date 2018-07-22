class AddGroupIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :group_id, :integer
  end
end
