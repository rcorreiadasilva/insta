class AddTotalCommentsCount < ActiveRecord::Migration[5.2]
  def change
    add_column  :posts, :total_comments_count, :integer
  end
end
