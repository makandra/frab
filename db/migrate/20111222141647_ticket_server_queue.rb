class TicketServerQueue < ActiveRecord::Migration[4.2]
  def up
    add_column :ticket_servers, :queue, :string
  end

  def down
    remove_column :ticket_servers, :queue, :string
  end
end
