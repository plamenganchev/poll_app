class AddIndexToIps < ActiveRecord::Migration[5.2]
  def change
    add_index :ip_checks, :ip_adress
    add_index :ip_checks,[:ip_adress,:poll_id],unique: true
  end
end
