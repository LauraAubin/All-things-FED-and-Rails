class WelcomeController < ApplicationController
  def index
    @message = "Welcome!"
    @count = 2
    @bonus = "This message came from the controller."
  end
end
