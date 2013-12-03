class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|

      t.string :mobile , :null => false, :default => ''
      t.string :address_1 , :null => false, :default => ''
      t.string :address_2 , :null => false, :default => ''
      t.string :state, :null => false, :default => ''
      t.string :zip_code, :null => false, :default => ''

      t.timestamps
    end
  end

    def down
    drop_table :contacts
  end

end
