class Post < ApplicationRecord
  default_scope { order created_at: :desc }
  has_one_attached :image
  belongs_to :account
  before_create :set_active
  has_many :cards
  has_many :likes

  scope :active, -> {where active: true}

def total_likes
  0
end

def total_cards
  0
end

  private

  def set_active
    self.active = true
  end
end
