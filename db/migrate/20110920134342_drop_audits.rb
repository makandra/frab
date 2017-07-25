class DropAudits < ActiveRecord::Migration[4.2]
  def change
    drop_table :audits
  end
end
