class InvitaionsController < ApplicationController
    before_action :is_admin, only: [:new, :create, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def create
    end

    def new
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_invitaion
        @invitaion = Invitaion.find(params[:id])
    end
    
    def dog_params
        params.require(:invitaion).permit(:game, :platform, :time)
    end
end
