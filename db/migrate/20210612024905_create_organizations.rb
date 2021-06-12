class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :num
      t.string :name

      t.timestamps null: false
    end
  end
end
