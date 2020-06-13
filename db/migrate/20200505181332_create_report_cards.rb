class CreateReportCards < ActiveRecord::Migration[5.0]
  def change
    create_table :report_cards do |t|
      t.integer :student_id
      t.integer :grade_id
      t.timestamps
    end
  end
end

