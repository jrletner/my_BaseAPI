module Api
  module V1
    class UsersController < Api::V1::ApplicationController
      def create
        user = User.new(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], phone: params[:phone], password: params[:password])
        if user.save
          render_success(payload: { user: UserBlueprint.render_as_hash(user, view: :normal) },
                         status: :created)
        else
          render_error(errors: "There was a problem creating a user", status: 400)
        end
      end
    end
  end
end
