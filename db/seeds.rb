# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Character.destroy_all
Like.destroy_all



characters = [
  {pronunciation: "shi", chinese: "是", meaning: "to be"},
  {pronunciation: "wo", chinese: "我", meaning: "I"},
  {pronunciation: "bu", chinese: "不", meaning: "not / negation"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},
  {pronunciation: "mei", chinese: "美", meaning: "beautiful"},

]

User.create(name: "Joe Lorenzo", email: "josephclorenzo@gmail.com", years_experience: 3, password: "Stuff")
Character.create(characters)
Like.create(character: Character.first, user: User.first)

