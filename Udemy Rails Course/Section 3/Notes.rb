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

get 'wecome/home', to: 'welcome#home'
# Browser route 'welcome/home' directed to the welcome controller,
# home action.

class WelcomeController < ApplicationController
# In file 'welcome_controller.rb', inherits from subclass, 'ApplicationController'

def home
# Controller action method

# Template app/views/welcome/home.html.erb

#rake routes: see all available routes
