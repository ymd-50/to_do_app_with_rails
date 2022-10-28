class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos, id: false do |t|
      t.string :id, :null => false, primary_key: true
      t.references :user, type: :string, :null => false, foreign_key: true
      t.string :title, :null => false
      t.string :content
      t.timestamps
    end
  end
end