class LikesController < ApplicationController
  before_action :authenticate_account!

  def save_like
    @like = Like.new(post_id: params[:post_id], account_id: current_account.id)
    @post_id = params[:post_id]
    existing_like = Like.where(post_id: post_id, account_id: current_account.id).any?

    respond_to do |format|
      format.js {

        if Like.where(post_id: params[:post_id], account_id: current_account.id).any? #para permitirfazer unlike caso ja exista like .any da um valor verd ou falso
          #like already exists for post by this user

          existing_like.first.destroy
          @sucess = false
        elsif @like.save
          @sucess = true
        else
          @sucess = false
        end

          render "posts/like"
      }
    end
  end
end
