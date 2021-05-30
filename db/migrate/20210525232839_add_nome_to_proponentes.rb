class AddNomeToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :nome, :string
  end
end
