class AddTotalLikesCount < ActiveRecord::Migration[5.2]
  def change
    add_column  :posts, :total_likes_count, :integer
  end
end
