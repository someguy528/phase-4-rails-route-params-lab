class StudentsController < ApplicationController

  def index
    students = Student.all
    students = students.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:name]}", "%#{params[:name]}") if params[:name]
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
