class CreateConflicts < ActiveRecord::Migration
  def change
    create_table :conflicts do |t|
      t.date :date
      t.time :start
      t.time :end
      t.string :reason
      t.string :type_of_conflict
      t.belongs_to :singer

      t.timestamps
    end
    add_index :conflicts, :singer_id
  end
end
