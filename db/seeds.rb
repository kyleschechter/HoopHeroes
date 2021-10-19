# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.destroy_all
Player.destroy_all
Game.destroy_all
Performance.destroy_all

stock_img = "https://ae01.alicdn.com/kf/HTB1iTUKKlLoK1RjSZFuq6xn0XXaH/Mini-Yellow-Basketball-Rubber-Training-Small-Size-for-Indoor-Mini-Basketball.jpg"

t1 = Team.create(name: "Ballers", slogan: "We ball", image_url: stock_img)
t2 = Team.create(name: "Hoopers", slogan: "We hoop", image_url: stock_img)
t3 = Team.create(name: "Slammers", slogan: "We slam", image_url: stock_img)
t4 = Team.create(name: "Jammers", slogan: "We jam", image_url: stock_img)

p1 = Player.create(name: "Mo Buckets", team: t1, position: "PG")
p2 = Player.create(name: "Jo Buckets", team: t1, position: "SG")
p3 = Player.create(name: "Bo Buckets", team: t2, position: "PF")
p4 = Player.create(name: "Flo Buckets", team: t2, position: "SF")
p5 = Player.create(name: "Glo Buckets", team: t3, position: "C")
p6 = Player.create(name: "Woe Buckets", team: t3, position: "PG")
p7 = Player.create(name: "Toe Buckets", team: t4, position: "SG")
p8 = Player.create(name: "Ralph", team: t4, position: "PF")

g1 = Game.create(home_team_id: t1.id, away_team_id: t2.id)
g2 = Game.create(home_team_id: t3.id, away_team_id: t4.id)
g3 = Game.create(home_team_id: t2.id, away_team_id: t3.id)
g4 = Game.create(home_team_id: t4.id, away_team_id: t1.id)
g5 = Game.create(home_team_id: t1.id, away_team_id: t3.id)
g6 = Game.create(home_team_id: t2.id, away_team_id: t4.id)

Performance.create(game: g1, player: p1, points: 10)
Performance.create(game: g1, player: p2, points: 5)
Performance.create(game: g1, player: p3, points: 6)
Performance.create(game: g1, player: p4, points: 7)
Performance.create(game: g2, player: p5, points: 2)
Performance.create(game: g2, player: p6, points: 12)
Performance.create(game: g2, player: p7, points: 8)
Performance.create(game: g2, player: p8, points: 9)
Performance.create(game: g3, player: p3, points: 1)
Performance.create(game: g3, player: p4, points: 13)
Performance.create(game: g3, player: p5, points: 5)
Performance.create(game: g3, player: p6, points: 7)
Performance.create(game: g4, player: p1, points: 9)
Performance.create(game: g4, player: p2, points: 2)
Performance.create(game: g4, player: p7, points: 8)
Performance.create(game: g4, player: p8, points: 4)
Performance.create(game: g5, player: p1, points: 6)
Performance.create(game: g5, player: p2, points: 10)
Performance.create(game: g5, player: p5, points: 7)
Performance.create(game: g5, player: p6, points: 11)
Performance.create(game: g6, player: p3, points: 0)
Performance.create(game: g6, player: p4, points: 10)
Performance.create(game: g6, player: p7, points: 5)
Performance.create(game: g6, player: p8, points: 9)