class UserPolicy
    attr_reader :current_user, :model

    def initialize
        @current_user = current_user
        @user = model
    end

    def index?
        @current_user.admin?
    end
end
