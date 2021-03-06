class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.references :user, foreign_key: true
      t.references :team, foreign_key: true
      t.datetime :due_date

      t.timestamps
    end
  end
end
