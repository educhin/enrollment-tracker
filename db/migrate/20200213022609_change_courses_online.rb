class ChangeCoursesOnline < ActiveRecord::Migration[6.0]
  def change
    change_column_default :courses, :is_online, false
  end
end
