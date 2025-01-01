class CreateLtmTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :ltm_tasks do |t|
      t.string :title, null: false
      t.string :status, null: true
      t.string :body, null: true
      t.date :due, null: true
      t.references :ltm_user, null: true, foreign_key: true
      t.references :ltm_tag, null: true, foreign_key: true

      t.timestamps
    end
  end
end
