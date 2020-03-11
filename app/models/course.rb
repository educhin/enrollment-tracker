class Course < ActiveRecord::Base
    has_many :enrollments
    has_many :students, through: :enrollments

    scope :enrolled, -> (course_id) {where('course_id = ?', course_id)}

    def self.already_enrolled(student)
        self.all.select do |course|
            !course.students.include?(student)
        end
    end
end