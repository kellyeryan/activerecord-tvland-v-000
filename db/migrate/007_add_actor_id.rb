class AddActorId < ActiveRecord::Migration[5.1]
  add_column :characters, :actor_id, :integer
end
