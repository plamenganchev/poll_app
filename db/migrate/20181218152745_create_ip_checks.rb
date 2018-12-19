class CreateIpChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :ip_checks do |t|
      t.string :ip_adress
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
