class Adddefaulttoclicks < ActiveRecord::Migration[6.0]
  def change
    change_column :actions, :clicks, :integer, default: 0
  end
end
