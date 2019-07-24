class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string,        null: false, default: ""
    add_column :users, :first_name, :string,      null: false, default: ""
    add_column :users, :last_name, :string,       null: false, default: ""
    add_column :users, :bio, :string,             null: false, default: ""
    add_column :users, :profile_img, :string,     null: false, default: "profile.png"
  end

  
end
