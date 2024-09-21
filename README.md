# Simple Blog API

A simple blog API built with Ruby on Rails and MongoDB using the Mongoid ODM (Object-Document Mapper).

## Features

- Create, read, update, and delete blog posts
- Basic user authentication (if applicable)
- MongoDB as the primary database
- RESTful API architecture
- Pagination and filtering (optional, if implemented)

## Tech Stack

- Backend: **Ruby on Rails**
- Database: **MongoDB (with Mongoid)**
- Authentication: **JWT**
- API Documentation: **Swagger**

## Getting Started
### Prerequisites

- Ruby `3.2.2`
- Rails `7.1.3.4`
- MongoDB (Ensure MongoDB is installed and running)
- Bundler (If not installed, run gem install bundler)

## Setup

1. Clone the repository:

```bash
git clone https://github.com/your-username/simple-blog-api.git
cd simple-blog-api
```

2. Install dependencies:

```bash
bundle install
```

3. Configure MongoDB connection:

Edit the `config/mongoid.yml` file with your MongoDB credentials:

```yaml
development:
  clients:
    default:
      uri: 'mongodb://localhost:27017/simple_blog_api_development'
      options:
        server_selection_timeout: 5
```
4. Run the database setup:

```bash
rails db:setup
```

5. Start the server:

```bash
rails s
```
6. Access the API at `http://localhost:3000/`.

<!-- ## API Endpoints

### Blog Posts

__GET__ /posts - Get all blog posts  
__POST__ /posts - Create a new blog post  
__GET__ /posts/:id - Get a specific blog post  
__PUT__ /posts/:id - Update a blog post  
__DELETE__ /posts/:id - Delete a blog post -->

## Contributing

Feel free to submit issues or pull requests.
