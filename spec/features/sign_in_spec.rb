require 'rails_helper'

feature 'Sign in', :devise do
    scenario 'user cannot sign in if not registered' do
        def sign_in(email,password)
            visit new_user_session_path
            fill_in "user_email", :with => user.email
            fill_in "user_password", :with => user.password
            find('#login').click
        end
        sign_in('phil@gmail.com','12345678')
        expect(page).to have_content 'invalid email or password'
    end
    scenario ' user can sign in with valid credentials' do
        user = FactoryGirl.create(:user)
        sign_in(user)
        expect(page).to have_content "Signed in successfully."
    end

    scenario "user cannot sign in with invalid email" do
        user = FactoryGirl.create(:user,email: nil)
        sign_in(user)
        expect(page).to have_content "invalid email or password"
    end
    scenario "user cannot sign in with invalid password" do
        user = FactoryGirl.create(:user,password: nil)
        sign_in(user)
        expect(page).to have_content "invalid email or password"
    end

end
