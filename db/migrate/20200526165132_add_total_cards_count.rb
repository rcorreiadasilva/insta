class AddTotalCardsCount < ActiveRecord::Migration[5.2]
  def change
    add_column  :posts, :total_cards_count, :integer
  end
end
