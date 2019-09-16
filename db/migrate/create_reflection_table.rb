class CreateReflectionTable < ActiveRecord::Migration[6.0]
  create_table :reflections do |t|
    t.string :title, :null => false
    t.string :body, :null => false
    t.user_id :integer, :null => false
    t.timestamps
  end
end
