class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :polls, :question
  end
end
