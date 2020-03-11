module ApplicationHelper
    def display_signup_or_profile
        if current_student
            student = Student.find(session[:student_id])
            link_to "Your Profile", student_path(student), class: "navbar-brand"
        else
            link_to "Sign Up", new_student_path, class: "navbar-brand"
        end
    end

    def display_signin_or_signout
        if current_student
            link_to "Log Out", logout_path, class: "navbar-brand"
        else
            link_to "Log In", login_path, class: "navbar-brand"
        end
    end

    def display_link_to_courses
        if current_student
            link_to "Courses", courses_path, class: "navbar-brand"
        end
    end
end
