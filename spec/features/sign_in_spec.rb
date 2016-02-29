require 'rails_helper'

feature 'Sign in', :devise do
    before do
        @user = FactoryGirl.build(:user)
        def sign_in(user)
            visit new_user_session_path
            fill_in "user_email", :with => user.email
            fill_in "user_password", :with => user.password
            click_on 'Log in'
        end
    end
    scenario 'user cannot sign in if not registered' do
        @user = FactoryGirl.build(:user,email: nil, password: nil)
        sign_in(@user)
        expect(@user).not_to be_valid
    end
    scenario ' user can sign in with valid credentials' do
        @user = FactoryGirl.build(:user)
        sign_in(@user)
        expect(@user).to be_valid
    end

    scenario "user cannot sign in with invalid email" do
        @user = FactoryGirl.build(:user,email: nil)
        sign_in(@user)
        expect(@user).not_to be_valid
    end
    scenario "user cannot sign in with invalid password" do
        @user = FactoryGirl.build(:user,password: nil)
        sign_in(@user)
        expect(@user).not_to be_valid "invalid email or password"
    end

end
