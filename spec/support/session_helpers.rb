module SessionHelpers
    def sign_in(user)
      visit new_user_session_path
      fill_in "user_email", with: "user_params[:email]"
      fill_in "user_password", with: "user_params[:password_digest]"
      click_on 'Log in'
    end
end
