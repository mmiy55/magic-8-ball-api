class RemoveUserFromAnswer < ActiveRecord::Migration[7.0]
  def change
    remove_reference :answers, :user, null: false, foreign_key: true
  end
end
