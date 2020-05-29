class Card < ApplicationRecord
  belongs_to :post
  belongs_to :account
  validates_uniqueness_of :post_id, scope: :account_id



after_create :update_post_card_counter


private

def update_post_like_counter
  Post.find(self.post_id).increment(:total_cards_count).save
end




end
