class RemoveBodyFromProponentes < ActiveRecord::Migration[6.1]
  def change
    remove_column :proponentes, :body, :text
  end
end
