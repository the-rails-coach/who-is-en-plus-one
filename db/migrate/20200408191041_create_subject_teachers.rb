class CreateSubjectTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_teachers do |t|
      t.integer :subject_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
