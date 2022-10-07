class SessionsController < ApplicationController
    # create a new login session
    def create
        # find the user by username
        user = User.find_by(username: params[:username])
        # save user to session
        session[:user_id] = user.id
        # return user as json
        render json: user
    end

    # destroy the login session
    def destroy
        # returns no content
        session.delete :user_id
        head :no_content
    end
end
