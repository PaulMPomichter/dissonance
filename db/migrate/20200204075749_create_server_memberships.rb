class CreateServerMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :server_memberships do |t|
      t.integer	:server_id, null: false
      t.integer	:member_id, null: false

      t.timestamps

      t.index :server_id
      t.index :member_id
    end
  end
end
