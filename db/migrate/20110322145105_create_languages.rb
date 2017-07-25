class CreateLanguages < ActiveRecord::Migration[4.2]
  def self.up
    create_table :languages do |t|
      t.string :code
      t.integer :attachable_id
      t.string :attachable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :languages
  end
end
