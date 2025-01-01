class CreateLtmTags < ActiveRecord::Migration[8.0]
  def change
    create_table :ltm_tags do |t|
      t.string :name
      t.references :ltm_user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
