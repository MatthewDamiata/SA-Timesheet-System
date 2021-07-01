class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.text :num
      t.text :name

      t.timestamps null: false
    end
  end
end
