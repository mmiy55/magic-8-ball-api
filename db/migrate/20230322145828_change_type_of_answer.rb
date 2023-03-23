class ChangeTypeOfAnswer < ActiveRecord::Migration[7.0]
  def change
    rename_column :answers, :type, :answer_type
  end
end
