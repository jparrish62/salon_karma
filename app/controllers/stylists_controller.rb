class StylistsController < ApplicationController
    def new
        @stylist = current_user.stylists.build
    end

    def create
        @stylist = current_user.stylists.build(stylist_params)
        if @stylist.save
            redirect_to stylists_path, :success => "Created"
        else
            redirect_to new_stylist_path, :notice => "Profile not created"
        end
    end

    def index
        @stylists = Stylist.where(current_user.id).order('created_at DESC')
    end

    def show
        @stylist = Stylist.find(params[:id])
    end

    def edit
        @stylist = Stylist.find(params[:id])
    end

    def update
        @stylist = find(params[:id])
        if @stylist.update_attributes(secure_params)
            redirect_to stylist_path, :success => "Stylist updated"
        else
            redirect_to users_path, :alert => "Unable to update Stylist"
        end
    end

    def destroy
        @stylist = Stylist.find(params[:id])
        @stylist.destroy
        redirect_to stylists_path
    end

    private

    def stylist_params
        params.require(:stylist).permit(:name, :role, :position, :bio, :image)
    end
end
