class AddCidadeToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :cidade, :string
  end
end
