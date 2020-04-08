class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.integer :teacher_id
      t.string :name
      t.string :type

      t.integer :grade_id

      t.timestamps
    end
  end
end
