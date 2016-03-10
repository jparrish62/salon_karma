require 'rails_helper'

describe "Stylist", :stylist do
  it "is valid with name, role, position" do
    @stylist = FactoryGirl.build(:stylist)
    expect(@stylist).to be_valid
  end
  it "is invalid without name" do
    @stylist = FactoryGirl.build(:stylist, name: nil)
    expect(@stylist).not_to be_valid
  end
  it "is invalid without position" do
    @stylist = FactoryGirl.build(:stylist,position: nil)
    expect(@stylist).not_to be_valid
  end
end
