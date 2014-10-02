class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    	t.string :name
    	t.integer :age
    	t.string :town
      t.timestamps
    end
  end
end
