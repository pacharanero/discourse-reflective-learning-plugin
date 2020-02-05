class CreateReflectionTable < ActiveRecord::Migration[6.0]
  create_table :reflections do |t|
    t.string :title, :null => false
    t.string :body, :null => false
    t.integer :user_id, :null => false
    t.timestamps
  end
end
