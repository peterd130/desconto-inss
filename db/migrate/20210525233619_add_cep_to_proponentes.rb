class AddCepToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :cep, :string
  end
end
