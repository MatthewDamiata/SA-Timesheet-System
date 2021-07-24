require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


profiles = [{:org => 123, :org2 => 321, :manager_id => 5, :privilege => 1, :grad => 1}
     ]

profiles.each do |profile|
  Profile.create!(profile)
end

CSV.foreach(Rails.root.join('db/organizations.csv')) do |row|
  Organization.create({
    num: row[0],
    name: row[1]
  })
end

CSV.foreach(Rails.root.join('db/admins.csv')) do |row|
  Admin.create({
    email: row[0]
  })
end
