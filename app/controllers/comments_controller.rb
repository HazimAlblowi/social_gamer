class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

    def create
        @invitaion = Invitaion.find(params[:invitaion_id])
        @comment = @invitaion.comments.new(comment_params)
        @comment.user_id = current_user.id

        if @comment.save
            redirect_to @invitaion
        else
            render @invitaion
        end

      end

    def edit
        # @invitaion =  Invitaion.find(params[:invitaion_id])
        @comment = Comment.find(params[:id])
    end

    def update
      @comment = Comment.find(params[:id])

         if @comment.update(params.require(:comment).permit(:content))
          redirect_to Invitaion.find(@comment.invitaion_id)
         else
          render "edit"
         end
    end


      def destroy
        @invitaion = Invitaion.find(params[:invitaion_id])
        @comment = @invitaion.comments.find(params[:id])
        @comment.destroy
        redirect_to @invitaion
      end
      private
        def comment_params
          params.require(:comment).permit(:content, :invitaion_id, :user_id)
        end

    
end
