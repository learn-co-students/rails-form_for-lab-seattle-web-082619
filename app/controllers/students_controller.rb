# frozen_string_literal: true

class StudentsController < ApplicationController
  before_action :get_student, only: %i[show edit update]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to @student
  end

  def update
    @student.update(post_params)
    redirect_to @student
  end

  private

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def get_student
    @student = Student.find(params[:id])
  end
end
