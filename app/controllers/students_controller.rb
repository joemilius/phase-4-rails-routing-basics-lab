class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        sorted_students = Student.all.order(grade: :desc)
        render json: sorted_students
    end

    def highest_grade
        best_student = Student.all.order(grade: :desc).first
        render json: best_student
    end
    
end
