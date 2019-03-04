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
  {pronunciation: "yī", chinese: "一", meaning: "one"},
  {pronunciation: "rén", chinese: "人", meaning: "person"},
  {pronunciation: "rì", chinese: "日", meaning: "sun"},
  {pronunciation: "rénrén", chinese: "人人", meaning: "everyone"},
  {pronunciation: "yuè", chinese: "月", meaning: "moon"},
  {pronunciation: "shān", chinese: "山", meaning: "mountain"},
  {pronunciation: "shǔi", chinese: "水", meaning: "water"},
  {pronunciation: "dà", chinese: "大", meaning: "big"},
  {pronunciation: "xiǎo", chinese: "小", meaning: "small"},
  {pronunciation: "hǔo", chinese: "火", meaning: "fire"},
  {pronunciation: "hǔo chē", chinese: "火车", meaning: "train"},
  {pronunciation: "nán", chinese: "男", meaning: "boy"},
  {pronunciation: "nǚ", chinese: "女", meaning: "girl"},
  {pronunciation: "tiān", chinese: "天", meaning: "sky"},
  {pronunciation: "mǎ", chinese: "马", meaning: "horse"},
  {pronunciation: "gōng", chinese: "工", meaning: "work"},
  {pronunciation: "kāi", chinese: "开", meaning: "open"},
  {pronunciation: "xīn", chinese: "心", meaning: "heart"},
  {pronunciation: "kāixīn", chinese: "开心", meaning: "happy"},

  

]

User.create(name: "Joe Lorenzo", email: "josephclorenzo@gmail.com", years_experience: 3, password: "Stuff")
Character.create(characters)
Like.create(character: Character.first, user: User.first)

