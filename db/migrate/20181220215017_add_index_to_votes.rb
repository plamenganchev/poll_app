class AddIndexToVotes < ActiveRecord::Migration[5.2]
  def change
     add_index :votes, [:poll_id, :voter_ip]
  end
end
