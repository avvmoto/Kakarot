require 'csv'

# mood-recipe-arrangement
t=CSV.table('db/moods2.csv')

ActiveRecord::Base.transaction do
  t.each do |row|
    next if row[:mood].nil?
    begin
      mood = Mood.find_by!(name: row[:mood].gsub(/[",]/,'') )
      recipe = Recipe.find_by!(uri: row[:url])
      color1 = Color.find_by!(code: row[:color1])
      color2 = Color.find_by!(code: row[:color2])
      color3 = Color.find_by!(code: row[:color3])
    rescue ActiveRecord::RecordNotFound
      print 'fail: '
      pp row
      next
    end

    a = Arrangement.create!(mood: mood)
    ArrangementsColor.create!(
                              arrangement_id: a.id,
                              color_id: color1.id,
                              weight: row[:weight1]
                              )
    ArrangementsColor.create!(
                              arrangement_id: a.id,
                              color_id: color2.id,
                              weight: row[:weight2]
                              )
    ArrangementsColor.create!(
                              arrangement_id: a.id,
                              color_id: color3.id,
                              weight: row[:weight3]
                              )
  end
end
