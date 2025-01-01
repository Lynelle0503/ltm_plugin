class DropTagTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :ltm_tags
  end
end
