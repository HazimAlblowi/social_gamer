class InvitaionsController < ApplicationController
    before_action :set_invitaion, only: [:show, :edit, :update, :destroy, :accept]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :check_if_owner, only: [:edit, :update, :destroy]


    def index
        @invitaions = Invitaion.all.order(created_at: :desc)
    end

    def user_invitaions
        @user_invitaions = User.find(params[:id]).invitaions
    end

    def user_accepted_invitaions
        @user_accepted_invitaions = Invitaion.where(accepter: params[:id])
    end
    def accept
        @invitaion.accepted = true;
        @invitaion.accepter = current_user.id
        @invitaion.save

        redirect_to @invitaion
    end

    def show
    end

    def create
        @invitaion = Invitaion.new(invitaion_params)
        if @invitaion.save
            redirect_to @invitaion
        else
            render 'new'
        end
    end

    def new
        @invitaion = Invitaion.new
    end

    def edit
    end

    def update
        if @invitaion.update(invitaion_params)
            redirect_to @invitaion
        else
            render 'new'
        end
    end

    def destroy
        @invitaion.destroy

        redirect_to invitaions_path
    end

    private

    def check_if_owner
        @invitaion = Invitaion.find(params[:id])
        if current_user.id != @invitaion.user_id

            redirect_to @invitaion
        end
    end

    def set_invitaion
        @invitaion = Invitaion.find(params[:id])
    end
    
    def invitaion_params
        params.require(:invitaion).permit(:game, :platform, :time, :user_id, :mode)
    end
end
