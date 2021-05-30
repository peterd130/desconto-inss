class AddEstadoToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :estado, :string
  end
end
