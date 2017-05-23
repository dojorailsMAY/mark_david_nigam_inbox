class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.references :sender#, foreign_key: true
      t.references :receiver#, foreign_key: true
      t.references :message, foreign_key: true

      t.timestamps
    end
    add_foreign_key :records, :users, column: :sender_id
    add_foreign_key :records, :users, column: :receiver_id
  end
end
