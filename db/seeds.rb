# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Recipe
if Recipe.all.blank?
  sql = open(File.join(Rails.root, "db", "recipes.sql")).read
  ActiveRecord::Base.connection.execute sql
end

## Create Color
def create_colors(url)
  require 'mechanize'
  agent = Mechanize.new
  page = agent.get(url)

  colors = page.search("ul#colorlist li")

  colors.each do |color|
    color_code = color.search(".iro16").children.first.to_s
    color_name = color.search(".ironame.wa").children.first.to_s
    color_name_kana = color.search(".iroyomi").children.first.to_s

    _color = Color.new
    _color.name = color_name
    _color.name_kana = color_name_kana
    _color.code = color_code
    _color.save
  end
end


#和の色
wa_url = "http://irononamae.web.fc2.com/colorlist/wa.html"
create_colors(wa_url)
#日本語
nihon_url = "http://irononamae.web.fc2.com/colorlist/ja.html"
create_colors(nihon_url)




## Create Mood Data (import txt file)
file = File.open("./sample.txt", "r")
file.each_line do |line|
  puts line
  mood = Mood.new
  mood.name = line.delete!("\"").delete!("\n")
  mood.save
  puts mood
end


