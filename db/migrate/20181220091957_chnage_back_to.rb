class ChnageBackTo < ActiveRecord::Migration[5.2]
  def change
    rename_table :vote_options, :answers
  end
end
