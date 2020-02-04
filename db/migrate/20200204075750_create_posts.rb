class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :author_id, null: false
      t.text :body, null: false
      t.references :thread, polymorphic: true, null: false

      t.timestamps

      t.index :author_id
      t.index :created_at
    end
  end
end
