class AddIndextoUsername < ActiveRecord::Migration[8.0]
  def change
    add_index :ltm_users, :username, unique: true
    #Ex:- add_index("admin_users", "username")
  end
end
