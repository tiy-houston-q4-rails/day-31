# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create email: "jesse.wolgamott@gmail.com", password: "12345678", password_confirmation: "12345678"

sugar = Category.create name: "sugar"
cocoa = Category.create name: "chocolate"

sugar.sweets.create name: "sweet tarts"
sugar.sweets.create name: "donuts"
cocoa.sweets.create name: "snickers"
cocoa.sweets.create name: "milky way"
