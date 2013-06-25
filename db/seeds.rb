# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.create(:first_name => 'William', :last_name => 'Harrison', :email => "wh1@example.com", :joined => "20130105")
Member.create(:first_name => 'Abraham', :last_name => 'Lincoln',  :email => "al1@example.com", :joined => "20130105")

Event.create(:title => 'Startups in a Post-Startup World', :occurs_on => '20130709', :status => 'on_sale', :description => 'This will be a cool event')
Event.create(:title => 'Battlestations: Cloud', :occurs_on => '20130810', :status => 'on_sale', :description => 'This will also be a cool event')