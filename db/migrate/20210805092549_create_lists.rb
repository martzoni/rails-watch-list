class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name, uniqueness: true

      t.timestamps
    end
  end
end
