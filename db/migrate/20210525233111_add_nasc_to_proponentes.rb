class AddNascToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :nasc, :date
  end
end
