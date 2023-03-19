module Api
  module V1
    class UsersController < Api::V1::ApplicationController
      def create
        user = User.new(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], phone: params[:phone], password: params[:password])
        if user.save
          render json: { success: true, user: user,
                         status: 201 }
        else
          render json: { errors: "There was a problem creting a new user", status: 400 }
        end
      end
    end
  end
end
