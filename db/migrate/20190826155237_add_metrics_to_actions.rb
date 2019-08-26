class AddMetricsToActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :uuid, :string
    add_column :actions, :clicks, :integer
  end
end
