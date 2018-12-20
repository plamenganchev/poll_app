class AddColumnIpToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :voter_ip, :string
  end
 
end
