class CreateQuestionLists < ActiveRecord::Migration
  def self.up
    create_table :question_lists do |t|
      t.string :question
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :question_lists
  end
end
