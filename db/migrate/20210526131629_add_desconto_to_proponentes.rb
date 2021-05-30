class AddDescontoToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :desconto, :float
  end
end
