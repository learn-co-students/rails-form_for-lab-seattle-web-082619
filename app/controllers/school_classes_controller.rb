class SchoolClassesController < ApplicationController

  def index 
    @classes = SchoolClass.all
  end

  def show
    set_school_class
  end

  def new 
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(class_params)
    @class.save
    redirect_to @class
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    @class = SchoolClass.update(class_params)
    redirect_to @class
  end

  private

  def set_school_class
    @class = SchoolClass.find(params[:id])
  end

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
