require 'rails_helper'

describe "Appointments" do
    it "New Page has content Create Appointment" do
        user = FactoryGirl.build(:user)
        login_as(user)
        visit new_appointment_path
        expect(page).to have_content "Make Appointment"
    end

    it "Show Page has content Appointment Created" do
        user = FactoryGirl.create(:user)
        login_as(user)
        visit appointment_path(user)
        expect(page).to have_content "Appointment Created"
    end
end
