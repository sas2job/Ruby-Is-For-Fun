class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    
    create_table :messages do |t|
      t.text :name
      t.text :email
      t.text :message
      
      t.timestamps
    end

  end
end
