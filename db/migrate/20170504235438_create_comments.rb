class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.integer :owner_id
    	t.integer :dog_id
    	t.text :description 

      t.timestamps
    end
  end
end
