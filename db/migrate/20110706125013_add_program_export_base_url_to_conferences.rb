class AddProgramExportBaseUrlToConferences < ActiveRecord::Migration[4.2]
  def self.up
    add_column :conferences, :program_export_base_url, :string
  end

  def self.down
    remove_column :conferences, :program_export_base_url
  end
end
