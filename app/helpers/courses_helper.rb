module CoursesHelper
    def display_enroll_or_drop(course)
        if current_student.courses.enrolled(course.id) != []
            button_to "Drop this course", {:controller => "enrollments", :action => "destroy", :course_id => course.id}, :method=>:delete
        else
            render partial: 'enrolled'
        end
    end

    def display_course_or_student_course(course)
        if params[:id]
            link_to course.title, student_course_path(current_student, course)
        else
            link_to course.title, course_path(course)
        end
    end

end