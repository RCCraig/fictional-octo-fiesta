class RemoveGroupsMadeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :groups_made, :integer
  end
end
