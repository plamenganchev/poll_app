class AddIntexToVotes < ActiveRecord::Migration[5.2]
  def change
    add_index :votes, [:answer_id, :poll_id], unique: true
  end
end
