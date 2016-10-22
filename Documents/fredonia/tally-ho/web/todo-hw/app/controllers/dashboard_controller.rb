class DashboardController < ApplicationController
  def index
    @courses = Course.all
  end

  def example_new
    new_course = Course.new
    new_course.name = 'Some Class'
    new_course.number = 1
    new_course.save
    redirect_to '/dashboard'
  end

  def create_counter

    counter = Counter.new
    counter.users_id = params[:users_id]
    counter.courses_id = params[:courses_id]
    if !counter.save
      render json: "Could not Save", status: 400
    end

    counts = Counter.where(courses_id: params[:courses_id])
    # Respond with new coutn TODO
    render json: counts

  end

  def get_counts

  end

  def login

  end

  def delete_course
    course_to_delete = Course.find(params[:id])
    course_to_delete.destroy
    redirect_to '/dashboard'
  end
end
