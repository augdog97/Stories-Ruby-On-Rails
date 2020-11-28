

# 1. new method creates a new signup object 
# 2. Create method uses the signup parameters and if it saves to the database reidrects to the thanks page
# 3. Create a pricate signup params method that requires the signup model and permits the first name and email columns.
class SignupsController < ApplicationController
    def new
        @signups = Signup.new
    end

    def create 
        @signup = Signup.new(signup_params) 
        if @signup.save 
        redirect_to '/thanks' 
    else 
    render 'new' 
  end 
end 

    private
    def signup_params
          params_require(:signup).permit(:firstname, :email)
    end
end
