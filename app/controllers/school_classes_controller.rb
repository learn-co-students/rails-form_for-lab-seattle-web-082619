class SchoolClassesController < ApplicationController
  before_action :get_school_class, only: %i[show edit update]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(post_params)
    @school_class.save
    redirect_to @school_class
  end

  def update
    @school_class.update(post_params)
    redirect_to @school_class
  end

  private

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def get_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
