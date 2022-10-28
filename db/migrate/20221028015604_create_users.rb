class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: false do |t|
      t.string :id, :null => false, primary_key: true
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
