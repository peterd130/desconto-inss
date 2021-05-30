class AddTel1RefToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :tel1_ref, :string
  end
end
