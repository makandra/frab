class CreateTickets < ActiveRecord::Migration[4.2]
  def change
    create_table :tickets do |t|
      t.integer :event_id, null: false
      t.string :remote_ticket_id

      t.timestamps
    end
  end
end
