class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :occurs_on
      t.integer :status
      t.text :description

      t.timestamps
    end
  end
end
