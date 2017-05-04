class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
    	t.integer :age
    	t.string :name   
    	t.string :eyes 
    	t.string :color 
    	t.integer :weight 
    	t.string :height 
    	t.string :personality 
    	t.integer :owner_id
      t.string :sex 

      t.timestamps
    end
  end
end
