require 'rails_helper'

RSpec.describe Appointment, type: :model do
    it "is valid with name , time, date, hair_style, " do
        @appointment = FactoryGirl.build(:appointment)
        expect(@appointment).to be_valid
    end

    it "is invalid without name" do
        @appointment = FactoryGirl.build(:appointment, name: nil)
        expect(@appointment).not_to be_valid
    end

    it "is invalid without date" do
        @appointment = FactoryGirl.build(:appointment, date: nil)
        expect(@appointment).not_to be_valid
    end

    it "is invalid without time" do
        @appointment = FactoryGirl.build(:appointment, time: nil)
        expect(@appointment).not_to be_valid
    end

    it "Belongs to stylist" do
        @appointment = FactoryGirl.build(:appointment)
        expect(@appointment).to belong_to(:user)
    end

    it "Belongs to user" do
        @appointment = FactoryGirl.build(:appointment)
        expect(@appointment).to belong_to(:stylist)
    end
end
