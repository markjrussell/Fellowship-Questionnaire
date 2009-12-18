class CreateServiceLengths < ActiveRecord::Migration
  def self.up
    create_table :service_lengths do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :service_lengths
  end
end
