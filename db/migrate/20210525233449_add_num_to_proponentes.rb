class AddNumToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :num, :integer
  end
end
