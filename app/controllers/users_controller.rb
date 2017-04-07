class UsersController < ApplicationController
    
    def show #adding show action to the controller
        @user = User.find(params[:id])
    end
    
end
