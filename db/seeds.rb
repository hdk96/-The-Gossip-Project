require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#creation des 10 villes 
10.times do
	city = City.create(name: Faker::OnePiece.location, postal_code: rand(100..976))
end 
#creation des 10 utilisateurs
10.times do
	user = User.create(city_id: rand(1..10), first_name:Faker::OnePiece.character, last_name:Faker::OnePiece.character, description: Faker::OnePiece.akuma_no_mi, email:Faker::Internet.email, age: rand(18..35))
end
#creation des 20 gossips
20.times do
	post = Gossip.create(tag_id:rand(1..10), user_id:rand(1..10), title:Faker::GameOfThrones.house, content: Faker::OnePiece.quote)

end 
#creation des 10 tags 
10.times do
	tag = Tag.create(gossip_id: rand(1..20), title: "##{Faker::OnePiece.island}" )
end 

2.times do 
	mp = PrivateMessage.create(sender_id: rand(1..10), recipient_id: rand(1..10), content: Faker::GameOfThrones.quote)
end 
#creation des 20 commentaires
20.times do 
	comment = Comment.create(user_id: rand(1..10), gossip_id: rand(1..10), content: Faker::GameOfThrones.quote)
end 
#cration des 20 likes
20.times do 
	like = Like.create(user_id: rand(10), gossip_id: rand(20), comment_id: rand(20))
end
