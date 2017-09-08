# -------------------------------------------
# SECTION 3
# Intro to Ruby on Rails
# -------------------------------------------

# HELPERS: Logic for views
# PUBLIC folder: contains 404, 422, & 500 html files

#FLOW:
# Request from browser
# Received at router
# Request routed to controller
# Controller either renders a view template, or goes to model
    # Model communicates with database
    # Model sends back data to Controller
    # Controller renders view


# -------------------------------------------
# TEST APP
# -------------------------------------------

get 'welcome/home', to: 'welcome#home'
# Browser route 'welcome/home' directed to the welcome controller,
# home action.

class WelcomeController < ApplicationController
# In file 'welcome_controller.rb', inherits from subclass, 'ApplicationController'

def home
# Controller action method

Template: # app/views/welcome/home.html.erb

rake routes: # see all available routes

root route:
    # Before:
    get 'welcome/home', to: 'welcome#home'
    get 'welcome/about', to: 'welcome#about'
    # <%= link_to 'Home', welcome_home_path %>
    # <%= link_to 'About', welcome_about_path %>

    # After:
    root 'welcome#home'
    get 'about', to: 'welcome#about'
    # <%= link_to 'Home', root_path %>
    # <%= link_to 'About', about_path %>

# Create model with a scaffold
rails generate scaffold Article title:string description:text
  # Migration file for table
  # Article model
  # Test
  # Routes
rake db:migrate

# Controller successful save notice (not a flash)
format.html { redirect_to @object, notice: 'Notice text.' }


# -------------------------------------------
# VERSION CONTROL
# -------------------------------------------

git init # initialize new repo

Submodules # https://git-scm.com/book/en/v2/Git-Tools-Submodules
    # When adding another repo (untracked changes) inside an existing repo
    submodule add https://github.com/LauraAubin/All-things-FED-and-Rails.git Udemy Rails Course/Section 3/test_app

rm -rf <folder/file name> # delete

git checkout -f # undo all changes

# Push an existing repo
git remote add git@github.com...git
git push -u origin master

# -------------------------------------------
# PRODUCTION
# -------------------------------------------

# Setting up Heroku
# In gemfile
group :production do
  gem 'pg' # postgres
  gem 'rails_12factor'
end
