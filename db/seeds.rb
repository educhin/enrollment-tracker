# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses = Course.create([
    {title: 'Elementary German I', course_code: 'GRMN 1001', is_online: false, credit_hours: 3.0, start_time: Time.parse("8:00"), days: 'MWF'},
    {title: 'Elementary German II', course_code: 'GRMN 1002', is_online: false, credit_hours: 3.0, start_time: Time.parse("9:00"), days: 'MWF'},
    {title: 'Elementary Spanish I', course_code: 'SPAN 1001', is_online: true, credit_hours: 3.0, start_time: Time.parse("8:00"), days: 'MWF'},
    {title: 'Elementary Spanish II', course_code: 'SPAN 1002', is_online: true, credit_hours: 3.0, start_time: Time.parse("9:00"), days: 'MWF'},
    {title: 'Gender and Sexuality in European History', course_code: 'WGSS 4650', is_online: false, credit_hours: 4.0, start_time: Time.parse("13:00"), days: 'TTH'},
    {title: 'Western Theatre History-CTW', course_code: 'THEA 4070', is_online: false, credit_hours: 3.0, start_time: Time.parse("11:00"), days: 'MW'},
    {title: 'Media History', course_code: 'JOUR 4040', is_online: false, credit_hours: 3.0, start_time: Time.parse("14:00"), days: 'TH'},
    {title: 'Calculus for the Life Sciences I', course_code: 'MATH 2201', is_online: false, credit_hours: 3.0, start_time: Time.parse("10:30"), days: 'MWF'},
    {title: 'Calculus for the Life Sciences II', course_code: 'MATH 2202', is_online: false, credit_hours: 3.0, start_time: Time.parse("14:00"), days: 'MWF'},
    {title: 'Applied Probability and Statistics for Computer Science', course_code: 'MATH 3020', is_online: true, credit_hours: 3.0, start_time: Time.parse("15:30"), days: 'T'},
    {title: 'Numerical Analysis I', course_code: 'MATH 4610', is_online: false, credit_hours: 3.0, start_time: Time.parse("8:00"), days: 'MW'},
    {title: 'Numerical Analysis II', course_code: 'MATH 4620', is_online: false, credit_hours: 3.0, start_time: Time.parse("9:30"), days: 'TTH'},
    {title: 'Introduction to Political Science', course_code: 'POLS 2101', is_online: true, credit_hours: 3.0, start_time: Time.parse("17:00"), days: 'MWF'},
    {title: 'Introduction To Forensic Science', course_code: 'FRSC 2100', is_online: true, credit_hours: 3.0, start_time: Time.parse("15:30"), days: 'TTH'},
    {title: 'Principles of Computer Science I', course_code: 'CSC 1301', is_online: true, credit_hours: 3.0, start_time: Time.parse("11:00"), days: 'MWF'},
    {title: 'Principles of Computer Science II', course_code: 'CSC 1302', is_online: true, credit_hours: 3.0, start_time: Time.parse("13:00"), days: 'MWF'},
    {title: 'Chemical Biology', course_code: 'CHEM 4240', is_online: false, credit_hours: 3.0, start_time: Time.parse("10:00"), days: 'MW'},
    {title: 'Microbiology', course_code: 'BIOL 3880', is_online: false, credit_hours: 3.0, start_time: Time.parse("10:00"), days: 'TTH'},
    {title: 'Introductory Biology I', course_code: 'BIOL 1103', is_online: false, credit_hours: 3.0, start_time: Time.parse("18:00"), days: 'TTH'},
    {title: 'English Fiction before 1800', course_code: 'ENGL 3290', is_online: false, credit_hours: 3.0, start_time: Time.parse("8:00"), days: 'W'},
    {title: 'English Composition I', course_code: 'ENGL 1101', is_online: true, credit_hours: 3.0, start_time: Time.parse("10:00"), days: 'MWF'},
    {title: 'English Composition II', course_code: 'ENGL 1102', is_online: true, credit_hours: 3.0, start_time: Time.parse("11:00"), days: 'MWF'},
    {title: 'Advanced English Composition', course_code: 'ENGL 1103', is_online: false, credit_hours: 3.0, start_time: Time.parse("9:00"), days: 'MW'}
])