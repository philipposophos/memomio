class CreateEmotionalTags < ActiveRecord::Migration[7.0]
  def change
    create_table :emotional_tags do |t|
      t.string :emotion

      t.timestamps
    end
  end
end
