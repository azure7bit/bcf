# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}") if !["schema_migrations"].include?(table)
end

puts '=== Seeding Admins Data ==='
admin = {
  :email => 'superadmin@bandungcoffee.com',
  :password => 'password',
  :password_confirmation => 'password'
}
admin = Admin.create!(admin)