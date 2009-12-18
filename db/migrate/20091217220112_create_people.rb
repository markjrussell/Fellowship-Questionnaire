class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.integer :batch_id
      t.integer :role
      t.integer :gender
      t.integer :work_pattern
      t.integer :practice_service
      t.integer :total_service
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :q4
      t.integer :q5
      t.integer :q6
      t.integer :q7
      t.integer :q8
      t.integer :q9
      t.integer :q10
      t.integer :q11
      t.integer :q12
      t.integer :q13
      t.integer :q14
      t.integer :q15
      t.integer :q16
      t.integer :q17
      t.integer :q18
      t.integer :q19
      t.integer :q20
      t.integer :q21
      t.integer :q22
      t.integer :q23
      t.integer :q24
      t.integer :q25
      t.integer :q26
      t.integer :q27
      t.integer :q28
      t.integer :q29
      t.integer :q30

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
