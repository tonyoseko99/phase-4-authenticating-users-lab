class UsersController < ApplicationController
    # get the current user
    def show
        # find the user by id from the session
        user = User.find_by(id: session[:user_id])
        # return user as json
        render json: user
    end
end
