class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.references :emotional_tag, null: false, foreign_key: true
      t.references :memory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
