class AddRoleToMemberships < ActiveRecord::Migration[5.2]
  def change
    add_column :memberships, :role, :string
  end
end
