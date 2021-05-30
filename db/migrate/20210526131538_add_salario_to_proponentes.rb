class AddSalarioToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :salario, :float
  end
end
