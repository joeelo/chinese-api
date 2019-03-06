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
  {pronunciation: "de", chinese: "的", meaning: "posessive particle"},
  {pronunciation: "le", chinese: "了", meaning: "completed action"},
  {pronunciation: "tā", chinese: "他", meaning: "he / him"},
  {pronunciation: "gè", chinese: "个", meaning: "general measure word"},
  {pronunciation: "yǒu", chinese: "有", meaning: "to have; there is"},
  {pronunciation: "lái", chinese: "来", meaning: "to come"},
  {pronunciation: "nà", chinese: "那", meaning: "that"},
  {pronunciation: "yào", chinese: "要", meaning: "to want; important"},
  {pronunciation: "huì", chinese: "会", meaning: "can; will; to know"},
  {pronunciation: "shén", chinese: "什", meaning: "what"},
  {pronunciation: "méi", chinese: "没", meaning: "not; negation"},
  {pronunciation: "dào", chinese: "到", meaning: "to arrive; until (time)"},
  {pronunciation: "shuō", chinese: "说", meaning: "to speak"},
  {pronunciation: "néng", chinese: "能", meaning: "to be able to"},
  {pronunciation: "shàng", chinese: "上", meaning: "above; top"},
  {pronunciation: "qù", chinese: "去", meaning: "to go"},
  {pronunciation: "tā", chinese: "她", meaning: "she"},
  {pronunciation: "hěn", chinese: "很", meaning: "very"},
  {pronunciation: "kàn", chinese: "看", meaning: "to see; look at"},
  {pronunciation: "zhīdào", chinese: "知道", meaning: "to know"},
  {pronunciation: "duì", chinese: "对", meaning: "correct; opposite"},
  {pronunciation: "dōu", chinese: "都", meaning: "all; both"},
  {pronunciation: "zǐ", chinese: "子", meaning: "child"},
  {pronunciation: "yě", chinese: "也", meaning: "also; too"},
  {pronunciation: "hé", chinese: "和", meaning: "and"},
  {pronunciation: "xià", chinese: "下", meaning: "below; down"},
  {pronunciation: "qǐ", chinese: "起", meaning: "to rise"},
  {pronunciation: "xiè", chinese: "谢", meaning: "to thank"}


]

Character.create(characters)

