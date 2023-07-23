class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        students = Student.order(grade: :desc)
        render json: students.first
    end
end
