class LoginController < ApplicationController

  def index
    if current_user
      redirect_to '/users/:id'
    end
  end
  
end
