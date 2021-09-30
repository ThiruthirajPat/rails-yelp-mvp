class RemoveColumnCommentToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :comment, :string
  end
end
