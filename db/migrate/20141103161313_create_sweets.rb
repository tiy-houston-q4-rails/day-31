class CreateSweets < ActiveRecord::Migration
  def change
    create_table :sweets do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
