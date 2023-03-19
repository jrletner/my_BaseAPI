module BaseApi
  module Users
    def self.new_user(params)
      user = User.new(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], phone: params[:phone], password: params[:password])

      begin
        user.save!
      rescue
        return { success?: false } unless user.valid?
      end

      { success?: true, payload: user }
    end
  end
end
