class AddTel2PesToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :tel2_pes, :string
  end
end
