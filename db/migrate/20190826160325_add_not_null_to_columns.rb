class AddNotNullToColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :actions, :name, :string, null: false
    change_column :actions, :clicks, :integer, null: false
    change_column :actions, :uuid, :string, null: false

    change_column :pages, :name, :string, null: false
  end
end
