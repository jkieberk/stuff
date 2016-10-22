class CoursesController < ApplicationController
  protect_from_forgery except: [:save]

  def add

  end

  def save

    new_course = Course.new
    new_course.name = params[:name]
    new_course.number = params[:number]
    new_course.section = params[:section]
    new_course.max_students = params[:max_students]
    new_course.departments_id = params[:departments_id]
    new_course.semesters_id = params[:semesters_id]

    new_course.save

    redirect_to "/dashboard"
  end
end
