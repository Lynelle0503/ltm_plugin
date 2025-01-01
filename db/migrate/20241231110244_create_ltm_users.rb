class CreateLtmUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :ltm_users do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
