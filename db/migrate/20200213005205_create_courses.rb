class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :course_code
      t.boolean :is_online, default: true, null: false
      t.integer :credit_hours
      t.time :start_time
      t.string :days
      t.date :start_date

      t.timestamps
    end
  end
end
