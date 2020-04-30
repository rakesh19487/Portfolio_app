# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do |t|
    Topic.create!(name: "Topic #{t}")
end    

10.times do |b|
    Blog.create!(
        title: "This is title for blog #{b}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        topic_id: rand(1..4)
    )
end    

9.times do |p|
    Portfolio.create!(
        title: "This is title for portfolio #{p}",
        subtitle: "This is subtitle for portfolio #{p}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        # thumb_image: "https://via.placeholder.com/300",
        # main_image: "https://via.placeholder.com/640x400"
    )
end    

4.times do |t|
    Technology.create!(
        name: "Tech #{t}",
        portfolio_id: rand(1..9)
    )
end    

5.times do |s|
    Skill.create!(
        title: "Rails-#{s}",
        percentage: 75
    )
end    