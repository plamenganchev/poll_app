class RenameColumnInAnswers < ActiveRecord::Migration[5.2]
  def change
    rename_column :answers, :content, :answer_content
  end
end
