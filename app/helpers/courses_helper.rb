module CoursesHelper
    def display_enroll_or_drop(course)
        if current_student.courses.enrolled(course.id) != []
            button_to "Drop this course", {:controller => "courses", :action => "drop_class", :course_id => course.id}, :method=>:post
        else
            render partial: 'enrolled'
        end
    end
end