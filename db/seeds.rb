# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
Team.destroy_all
Player.destroy_all
Game.destroy_all
Performance.destroy_all

stock_img = "https://ae01.alicdn.com/kf/HTB1iTUKKlLoK1RjSZFuq6xn0XXaH/Mini-Yellow-Basketball-Rubber-Training-Small-Size-for-Indoor-Mini-Basketball.jpg"

u1 = User.create!(email: "test11@test.com", password: "test111")
u2 = User.create!(email: "test21@test.com", password: "test222")
u3 = User.create!(email: "test31@test.com", password: "test333")
u4 = User.create!(email: "test41@test.com", password: "test444")

t1 = Team.create!(user: u1, name: "Ballers", slogan: "We ball", image_url: stock_img)
t2 = Team.create!(user: u2, name: "Hoopers", slogan: "We hoop", image_url: stock_img)
t3 = Team.create!(user: u3, name: "Slammers", slogan: "We slam", image_url: stock_img)
t4 = Team.create!(user: u4, name: "Jammers", slogan: "We jam", image_url: stock_img)

p1 = Player.create!(name: "Mo Buckets", team: t1, position: "PG")
p2 = Player.create!(name: "Jo Buckets", team: t1, position: "SG")
p3 = Player.create!(name: "Bo Buckets", team: t2, position: "PF")
p4 = Player.create!(name: "Flo Buckets", team: t2, position: "SF")
p5 = Player.create!(name: "Glo Buckets", team: t3, position: "C")
p6 = Player.create!(name: "Woe Buckets", team: t3, position: "PG")
p7 = Player.create!(name: "Toe Buckets", team: t4, position: "SG")
p8 = Player.create!(name: "Ralph", team: t4, position: "PF")

g1 = Game.create!(home_team_id: t1.id, away_team_id: t2.id)
g2 = Game.create!(home_team_id: t3.id, away_team_id: t4.id)
g3 = Game.create!(home_team_id: t2.id, away_team_id: t3.id)
g4 = Game.create!(home_team_id: t4.id, away_team_id: t1.id)
g5 = Game.create!(home_team_id: t1.id, away_team_id: t3.id)
g6 = Game.create!(home_team_id: t2.id, away_team_id: t4.id)

Performance.create!(game: g1, player: p1, points: 10, assists: 3, rebounds: 4)
Performance.create!(game: g1, player: p2, points: 5, assists: 2, rebounds: 1)
Performance.create!(game: g1, player: p3, points: 6, assists: 1, rebounds: 0)
Performance.create!(game: g1, player: p4, points: 7, assists: 4, rebounds: 5)
Performance.create!(game: g2, player: p5, points: 2, assists: 5, rebounds: 2)
Performance.create!(game: g2, player: p6, points: 12, assists: 0, rebounds: 0)
Performance.create!(game: g2, player: p7, points: 8, assists: 4, rebounds: 3)
Performance.create!(game: g2, player: p8, points: 9, assists: 3, rebounds: 1)
Performance.create!(game: g3, player: p3, points: 1, assists: 3, rebounds: 7)
Performance.create!(game: g3, player: p4, points: 13, assists: 1, rebounds: 4)
Performance.create!(game: g3, player: p5, points: 5, assists: 2, rebounds: 6)
Performance.create!(game: g3, player: p6, points: 7, assists: 4, rebounds: 2)
Performance.create!(game: g4, player: p1, points: 9, assists: 0, rebounds: 2)
Performance.create!(game: g4, player: p2, points: 2, assists: 2, rebounds: 1)
Performance.create!(game: g4, player: p7, points: 8, assists: 3, rebounds: 0)
Performance.create!(game: g4, player: p8, points: 4, assists: 1, rebounds: 3)
Performance.create!(game: g5, player: p1, points: 6, assists: 5, rebounds: 1)
Performance.create!(game: g5, player: p2, points: 10, assists: 0, rebounds: 8)
Performance.create!(game: g5, player: p5, points: 7, assists: 7, rebounds: 2)
Performance.create!(game: g5, player: p6, points: 11, assists: 2, rebounds: 4)
Performance.create!(game: g6, player: p3, points: 0, assists: 3, rebounds: 5)
Performance.create!(game: g6, player: p4, points: 10, assists: 0, rebounds: 3)
Performance.create!(game: g6, player: p7, points: 5, assists: 4, rebounds: 0)
Performance.create!(game: g6, player: p8, points: 9, assists: 4, rebounds: 10)