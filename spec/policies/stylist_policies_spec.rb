require 'rails_helper'

describe StylistPolicy do
    subject { StylistPolicy }
    let (:current_user) {FactoryGirl.build_stubbed :user}
    let (:other_user)   {FactoryGirl.build_stubbed :other_user}
    let (:admin)        {FactoryGirl.build_stubbed :user, :admin}

     permissions :new? do
         it "denies access if your not a admin" do
             expect(StylistPolicy).not_to permit(current_user)
         end

         it "allows access if your a admin" do
             expect(StylistPolicy).to permit(admin)
         end
     end
     permissions :show? do
         it "prevents other users from seeing the profile" do
              expect(subject).not_to permit(current_user, admin)
         end

         it "allows owner to see profile" do
             expect(subject).to permit(current_user, current_user)
         end
     end

     permissions :update? do
         it "denies access if your not a admin" do
             expect(StylistPolicy).not_to permit(current_user)
         end

         it "allows access if your a admin" do
             expect(StylistPolicy).to permit(admin)
         end
     end

     permissions :destroy? do
         it "denies access if your not a admin" do
             expect(StylistPolicy).not_to permit(current_user)
         end

         it "allows access if you are a admin" do
             expect(StylistPolicy).to permit(admin)
         end
     end
end
