# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Clear existing users to avoid duplicates
User.delete_all

# Seed data for users
User.create!([
  {
    username: "john_doe",
    password: "password123",
    email: "john@example.com",
    first_name: "John",
    last_name: "Doe",
    bio: "Just a regular user.",
    role: "user",
    is_active: true
  },
  {
    username: "jane_smith",
    password: "password123",
    email: "jane@example.com",
    first_name: "Jane",
    last_name: "Smith",
    bio: "A passionate writer.",
    role: "admin",
    is_active: true
  },
  {
    username: "mike_brown",
    password: "password123",
    email: "mike@example.com",
    first_name: "Mike",
    last_name: "Brown",
    bio: "Loves to code.",
    role: "user",
    is_active: false
  }
])

puts "Users seeded successfully!"
