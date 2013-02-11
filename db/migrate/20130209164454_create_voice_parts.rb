class CreateVoiceParts < ActiveRecord::Migration
  def change
    create_table :voice_parts do |t|
      t.string :name
      t.integer :max

      t.timestamps
    end
  end
end
