class Student < ActiveRecord::Base
    has_many :enrollments
    has_many :students, through: :enrollments
    has_secure_password
    validates :first_name,  presence: true, length: { minimum: 2, maximum: 50 }
    validates :last_name,  presence: true, length: { minimum: 2, maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 8, maximum: 25 },
            confirmation: { message: "Password must match confirmation" }


end