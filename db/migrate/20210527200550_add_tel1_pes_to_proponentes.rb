class AddTel1PesToProponentes < ActiveRecord::Migration[6.1]
  def change
    add_column :proponentes, :tel1_pes, :string
  end
end
