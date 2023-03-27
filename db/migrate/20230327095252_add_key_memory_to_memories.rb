class AddKeyMemoryToMemories < ActiveRecord::Migration[7.0]
  def change
    add_column :memories, :key_memory, :boolean, default: false
  end
end
