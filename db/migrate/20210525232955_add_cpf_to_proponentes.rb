class AddCpfToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :cpf, :string
  end
end
