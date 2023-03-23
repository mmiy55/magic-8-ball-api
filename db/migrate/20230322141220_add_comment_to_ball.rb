class AddCommentToBall < ActiveRecord::Migration[7.0]
  def change
    add_column :balls, :comment, :string
  end
end
