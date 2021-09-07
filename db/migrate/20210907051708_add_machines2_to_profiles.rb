class AddMachines2ToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :machine_2, :string
  end
end
