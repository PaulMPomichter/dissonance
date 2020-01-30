class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.integer :channel_id

      t.timestamps
    end
  end
end
