module CoursesHelper
    def display_enroll_or_drop(course)
        if current_student.courses.enrolled(course.id)
            link_to courses_path
        else
            <%= render 'enrolled' %>
        end
    end
end