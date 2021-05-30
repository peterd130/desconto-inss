class RemoveTitleFromProponentes < ActiveRecord::Migration[6.1]
  def change
    remove_column :proponentes, :title, :string
  end
end
