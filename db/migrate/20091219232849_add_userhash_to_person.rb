class AddUserhashToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :userhash, :string
  end

  def self.down
    remove_column :people, :userhash
  end
end
