class AddFieldsToInvitaions < ActiveRecord::Migration[5.2]
  def change
    add_column :invitaions, :mode, :string        
    add_column :invitaions, :accepted, :boolean,     null: false, default: false     
    add_column :invitaions, :accepter, :integer
  end
end
