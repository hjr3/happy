class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :thought

      t.timestamps
    end
    add_index :tags, :thought_id
  end
end
