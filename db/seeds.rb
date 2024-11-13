# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Clear existing data
User.delete_all
Category.delete_all
Post.delete_all

# Seed Users
users = User.create!([
  { username: "john_doe", password: "password123", email: "john@example.com", first_name: "John", last_name: "Doe", bio: "Just a regular user.", role: "user", is_active: true },
  { username: "jane_smith", password: "password123", email: "jane@example.com", first_name: "Jane", last_name: "Smith", bio: "A passionate writer.", role: "admin", is_active: true }
])

# Seed Categories
categories = Category.create!([
  { name: "Technology", description: "All things tech-related" },
  { name: "Health", description: "Health and wellness topics" },
  { name: "Travel", description: "Tips and stories from around the world" }
])

# Seed Posts
Post.create!([
  {
    title: "The Future of Technology",
    content: "Content about the future of technology...",
    excerpt: "A glimpse into the future of technology.",
    slug: "future-of-technology",
    user: users[0],
    category: categories[0]
  },
  {
    title: "Healthy Living Tips",
    content: "Content about healthy living...",
    excerpt: "Top tips for a healthy life.",
    slug: "healthy-living-tips",
    user: users[1],
    category: categories[1]
  },
  {
    title: "Top Travel Destinations",
    content: "Content about travel destinations...",
    excerpt: "Explore the world’s top travel destinations.",
    slug: "top-travel-destinations",
    user: users[0],
    category: categories[2]
  }
])

puts "Seeding completed successfully!"
