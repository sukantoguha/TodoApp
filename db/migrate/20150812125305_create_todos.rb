class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
