# README

This project is based on the following tutorial: https://guides.rubyonrails.org/getting_started.html


# Next step of tutorial: 4.1

# Table of Contents

1. Introduction
2. Rails Philosophy
3. Creating a New Rails App
   3.1. Prerequisites
   3.2. Creating Your First Rails App
   3.3. Directory Structure
   3.4. Model-View-Controller Basics
4. Hello, Rails!
   4.1. Autoloading in Development
5. Creating a Database Model
   5.1. Database Migrations
   5.2. Running Migrations
6. Rails Console
7. Active Record Model Basics
   7.1. Creating Records
   7.2. Querying Records
   7.3. Filtering & Ordering Records
   7.4. Finding Records
   7.5. Updating Records
   7.6. Deleting Records
   7.7. Validations
8. A Request's Journey Through Rails
9. Routes
   9.1. Parts of a URL
   9.2. HTTP Methods and Their Purpose
   9.3. Rails Routes
   9.4. Routes Command
10. Controllers & Actions
    10.1. Making Requests
    10.2. Instance Variables
    10.3. CRUD Actions
    10.4. Showing Individual Products
    10.5. Creating Products
    10.6. Editing Products
    10.7. Deleting Products
11. Adding Authentication
    11.1. Adding Log Out
    11.2. Allowing Unauthenticated Access
    11.3. Showing Links for Authenticated Users Only
12. Caching Products
13. Rich Text Fields with Action Text
14. File Uploads with Active Storage
15. Internationalization (I18n)
16. Adding In Stock Notifications
    16.1. Basic Inventory Tracking
    16.2. Adding Subscribers to Products
    16.3. In Stock Email Notifications
    16.4. Extracting a Concern
    16.5. Unsubscribe Links
17. Adding CSS & JavaScript
    17.1. Propshaft
    17.2. Import Maps
    17.3. Hotwire
18. Testing
    18.1. Fixtures
    18.2. Testing Emails
19. Consistently Formatted Code with RuboCop
20. Security
21. Continuous Integration with GitHub Actions
22. Deploying to Production
    22.1. Adding a User to Production
    22.2. Background Jobs using Solid Queue

# Initial setup (from within /store)
`bundle install` - Install dependencies
`bin/rails server` - Boot up the server (bin/rails ensures correct version)


# 5. Creating a DB model

- **Active Record (AR)** - part of Rails that handles database interactions. It lets you use Ruby code instead of writing SQL queries. Each table in your database is represented by a class, and each row is an object of that class.

`bin/rails generate model Product name:string`

Line above does these things:
1. Creates a migration in the db/migrate folder
    - AR creates created_at:datetime and updated_at:datetime using t.timestamps
2. An Active Record model in app/models/products.rb
3. Creates tests and test fixtures for this model

Now do the migration using `bin/rails db:migrate`



# 6. Rails console

`bin/rails console`

*store(dev)>* Product.column_names
=> "8.0.2"

# 7. Active Record Model Basics

store(dev)> Product.column_names
=> ["id", "name", "created_at", "updated_at"]



<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
