class AddShareTokenToPoll < ActiveRecord::Migration[5.2]
  def change
    add_column :polls, :share_token, :string
  end
end
