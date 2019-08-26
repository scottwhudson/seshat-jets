class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.belongs_to :page
      t.string :name

      t.timestamps
    end
  end
end
