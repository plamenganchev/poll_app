class SetCountTo0 < ActiveRecord::Migration[5.2]
  def change
   
  change_column :answers, :count, :integer, default: 0

  end
end
