class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
    create_table :barbers do |t|
      t.text :name
      
      t.timestamps
    end

    Barber.create :name => 'Jessie Pinkman'
    Barber.create :name => 'Walter Wait'
    Barber.create :name => 'Gus Fring'

  end
end
