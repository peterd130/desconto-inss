class AddLogToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :log, :string
  end
end
