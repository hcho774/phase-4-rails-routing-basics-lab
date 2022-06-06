class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.order(grade: :desc) 
        render json: students
    end

    def highest_grade
        smart_student = Student.all.order(grade: :desc).first
        render json: smart_student
    end

end
