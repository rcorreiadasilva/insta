class CardsController < ApplicationController
  before_action :authenticate_account!

  def save_card
    @card = Card.new(post_id: params[:post_id], account_id: current_account.id)
    @post_id = params[:post_id]

    respond_to do |format|
      format.js {
        if @card.save
          @sucess = true
        else
          @sucess = false
        end

          render "posts/card"
      }
    end
  end
end
