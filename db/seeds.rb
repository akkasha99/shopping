# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
puts "'''''''''''''''Deleting all users''''''''''''''"
user = User.where(:email => "admin@shopping.com").first
user.destroy if user.present?
puts "'''''''''''''Alluser deleted'''''''''''''''''" ""
puts "'''''''''''''Adding super admin'''''''''''''''"
user = User.new(:email => "admin@shopping.com",
                :password => "shopping2015",
                :user_name => "admin",
                :user_type => "admin",
                :is_admin => true,
)
# user.skip_confirmation!
if user.save!
  puts "''''''''''''super admin added successfully''''''''''''"
else
  puts "" "" "" "" '' '' "Problem in saving" "" "" "" "" "" ''
end

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
