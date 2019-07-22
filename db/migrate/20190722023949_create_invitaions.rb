class CreateInvitaions < ActiveRecord::Migration[5.2]
  def change
    create_table :invitaions do |t|
      t.string :game
      t.string :platform
      t.string :time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
