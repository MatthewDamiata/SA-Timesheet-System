class AddMachines1ToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :machine_1, :string
  end
end
