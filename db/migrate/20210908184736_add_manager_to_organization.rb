class AddManagerToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :manager, :string
  end
end
