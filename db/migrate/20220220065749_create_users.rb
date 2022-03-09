class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "name"
      t.string "introduction"
      
      t.string :name, null: false, default: ""
　　　t.string :encrypted_password, null: false, default: ""
　      
      t.timestamps
    end
  end
end
