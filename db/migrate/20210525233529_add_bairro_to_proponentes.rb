class AddBairroToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :bairro, :string
  end
end
