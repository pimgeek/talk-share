# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



g = TalkGroup.create

5.times do |i|
  g.topics.create(:title => 'test' + i.to_s, :title_tag => 'tag' + i.to_s)
end
