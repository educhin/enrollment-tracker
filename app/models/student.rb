class Student < ActiveRecord::Base
    has_many :enrollments
    has_many :students, through: :enrollments
    has_secure_password
end