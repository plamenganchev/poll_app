class DropUselessTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :ip_checks
  end
end
