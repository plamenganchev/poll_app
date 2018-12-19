class AddIndexToIps < ActiveRecord::Migration[5.2]
  def change
    add_index :ip_checks, :ip_adress
  end
end
