class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.date :birthday, :null => false, :default => '1900-1-1'
      t.string :relationship_status, :null => false, :default => 'S'

      t.belongs_to :user

      t.timestamps
    end
  end
end
