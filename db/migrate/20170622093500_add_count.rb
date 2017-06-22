class AddCount < ActiveRecord::Migration[4.2]
  def change

    add_column :urls, :count, :integer 
    	
   end
end
