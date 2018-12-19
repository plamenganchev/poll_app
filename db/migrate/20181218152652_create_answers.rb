class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :count
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
