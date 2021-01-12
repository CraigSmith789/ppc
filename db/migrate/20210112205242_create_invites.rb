class CreateInvites < ActiveRecord::Migration[6.1]
  def change
    create_table :invites do |t|
      t.belongs_to :party, null: false, foreign_key: true
      t.integer :guest_id
      t.boolean :attending

      t.timestamps
    end
  end
end
