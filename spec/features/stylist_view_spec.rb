require 'rails_helper'
feature "Stylist index page" do
    it "Has content Let the Good that you do bring out the Beauty in you!" do
        user = FactoryGirl.build(:user)
        login_as(user)
        visit stylists_path
        expect(page).to have_content "Let the Good that you do bring out the Beauty in you!"
    end
    it "Has stylist name" do
        user = FactoryGirl.build(:user)
        tonya = FactoryGirl.create(:stylist)
        login_as(user)
        visit stylist_path(tonya)
        expect(page).to have_content "Show Page"
    end
end
