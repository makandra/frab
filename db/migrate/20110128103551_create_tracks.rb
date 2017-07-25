class CreateTracks < ActiveRecord::Migration[4.2]
  def self.up
    create_table :tracks do |t|
      t.integer :conference_id
      t.string :name, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :tracks
  end
end
