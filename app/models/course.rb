class Course < ActiveRecord::Base
    has_many :enrollments
    has_many :students, through: :enrollments

    scope :enrolled, -> (course_id) {where('course_id = ?', course_id)}
end