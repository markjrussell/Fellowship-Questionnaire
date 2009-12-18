class CreateWorkPatterns < ActiveRecord::Migration
  def self.up
    create_table :work_patterns do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :work_patterns
  end
end
