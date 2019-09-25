class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end 

  def index
    @school_classes = SchoolClass.all 
  end 
  def create 
    @school_class = SchoolClass.new(school_class_params)
    # @schoolclass.title = schoolclass_params
    # @schoolclass.room_number = params[:room_number]
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end 

  def show
    @school_class = id_params
  end 

  def edit
    @school_class = id_params
  end 

  def update
    @school_class = id_params
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end 


  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def id_params
    SchoolClass.find(params[:id])
  end 

end
