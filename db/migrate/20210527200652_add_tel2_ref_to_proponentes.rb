class AddTel2RefToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :tel2_ref, :string
  end
end
