# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "demo@example.com", username: "DemoUser", password: "asdfasdf", tag: 1337)
# Server.create(owner_id: 1, name: "Test Server", is_private: false, invite_token: "testServer")
