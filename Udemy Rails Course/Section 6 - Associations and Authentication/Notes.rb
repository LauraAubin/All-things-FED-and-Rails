# -------------------------------------------
# SECTION 6
# Associations and Authentication
# -------------------------------------------

# http://guides.rubyonrails.org/association_basics.html

# Foreign key: Object stores a 'user_id', references the user who created the object.
# Has association between the tables.
# Tracks relationships.
# Users can create multiple objects, one-to-many association.

# Create this object: (in migration file)
t.references :user, index: true, foreign_key: true

# Migrations need only the 'belongs_to' association.


# -------------------------------------------
# FOREIGN KEYS
# -------------------------------------------

add_foreign_key :articles, :authors
# Adds foreign key to the 'author_id' column in articles.
# References id column of the authors table.


# -------------------------------------------
# BELONGS_TO
# -------------------------------------------

# Schema: need to create foreign keys

# Object:
belongs_to: user # has this one association, 'user' must be singular.

# Migration for an object that belongs to a user
create_table :objects do |t|
  t.belongs_to :user, index: true
end


# -------------------------------------------
# HAS_MANY
# -------------------------------------------

# one-to-many

# User:
has_many: :comments # has this many associations, 'comments' is pluralized.


# -------------------------------------------
# HAS_MANY :through
# -------------------------------------------

# many-to-many, join model.

# Patients go through appointments first.
class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end

class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end
# Physicians go through appointments first.
class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
end
#physicians <-- appointments --> patients

# -------------------------------------------

# Document has many sections, sections have many paragraphs.
class Document < ApplicationRecord
  has_many :sections
  has_many :paragraphs, through: :sections
end

class Section < ApplicationRecord
  belongs_to :document
  has_many :paragraphs
end

class Paragraph < ApplicationRecord
  belongs_to :section
end
# 'through :sections' lets us get how many paragraphs a document has:
@document.paragraphs


# -------------------------------------------
# HAS_ONE :through
# -------------------------------------------

# Each supplier has one account.
class Supplier < ApplicationRecord
  has_one :account
  has_one :account_history, through: :account
end

# Each account is associated with one account history.
class Account < ApplicationRecord
  belongs_to :supplier
  has_one :account_history
end

class AccountHistory < ApplicationRecord
  belongs_to :account
end
# Suppliers <-- Accounts <-- AccountHistories


# -------------------------------------------
# has_and_belongs_to_many
# -------------------------------------------

# Direct many-to-many connection with another model (no intervening model).
# Still needs a joining table in db.
# Schema: need to create join table.

# Each assembly has many parts.
class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts
end

# Each part has many assemblies.
class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies
end
# assemblies <-- assemblies_parts --> parts


# -------------------------------------------
# Polymorphic
# -------------------------------------------

# Model can belong to more than one other model, with single association.

class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end

class Employee < ApplicationRecord
  has_many :pictures, as: :imageable
end

class Product < ApplicationRecord
  has_many :pictures, as: :imageable
end
@employee.pictures
@product.pictures
# Parents:
@picture.imageable

# -------------------------------------------

# DECLARING IN MIGRATION (for polymorphic interfaces)
class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string  :name
      t.integer :imageable_id # foreign key
      t.string  :imageable_type # type
      t.timestamps
    end

    add_index :pictures, [:imageable_type, :imageable_id]
  end
end
# Also works with:
class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :imageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end


# -------------------------------------------
# Self joins
# -------------------------------------------

# Relation to itself.

# Storing all employees in a single db model, trace relationships.
class Employee < ApplicationRecord
  # employee has several subordinates.
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"

  # employee has one manager.
  belongs_to :manager, class_name: "Employee"
end
@employee.subordinates
@employee.manager


# -------------------------------------------
# ASSOCIATION EXAMPLES
# -------------------------------------------

# Add a new book for an existing author:
# (without association)
@book = Book.create(published_at: Time.now, author_id: @author.id)
# (with association)
@book = @author.books.create(published_at: Time.now)

# -------------------------------------------

# Delete an author and all their books:
#(without association)
@books = Book.where(author_id: @author.id)
@books.each do |book|
  book.destroy
end
# (with association)
@author.destroy

# -------------------------------------------

# Object:
belongs_to: user
# User:
has_many: :comments
user.comments # now generates a query for comments belonging to this user.


# -------------------------------------------
# CACHE
# -------------------------------------------

# Associations are stored in cache, keeps result of most recent query.
# Shared across methods.

author.books                 # retrieves books from the database
author.books.size            # uses the cached copy of books
author.books.empty?          # uses the cached copy of books

# Then if data is changed:


author.books                 # retrieves books from the database
author.books.size            # uses the cached copy of books
author.books.reload.empty?   # discards the cached copy of books and goes back to the database


# -------------------------------------------
# VALIDATIONS
# -------------------------------------------

# Ensures name is unique, ignoring case.
validates :name, uniqueness: { case_sensitive: false }

# Simple email regex:
/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i # store in a variable.

# Before user hits db, their email is modified.
Before_save {self.email = email.downcase }

# If no validation has been set but the view is breaking because there is no user:
# <%= article.user.username if article.user %>


# -------------------------------------------
# DEBUGGING
# -------------------------------------------

# In a view, mainly 'application.html.erb':
# Show params only in development, such as controllers...
# <%= debug(params) if Rails.env.development? %>


# -------------------------------------------
# SECURE PASSWORD
# -------------------------------------------

# Needs 'bcrypt' gem.
# 'password_digest' attribute in users table (string).
# 'has_secure_password' method in model (user.rb).
# One way hashed digest of string entered as password.
# Use 'resource.Authenticate('password')' to compare passwords.
