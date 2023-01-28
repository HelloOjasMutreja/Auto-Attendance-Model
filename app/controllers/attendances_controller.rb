class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # before_action :require_teacher, only: [:show, :edit, :update, :destroy]
  # before_action :require_admin, only: [:index, :show]

  def index
    @attendances = Attendance.all
  end

  def show
    @attendance = Attendance.find(params[:id])
    if @attendance.class_section
      @students = @attendance.class_section.students
    else
      redirect_to attendances_path, notice: "class_section not exist in this attendance"
    end
  end

  def new
    @attendance = Attendance.new
  end

  def edit
  end

  def create
    @attendance = Attendance.new(attendance_params)

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: 'Attendance was successfully created.' }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    def attendance_params
      params.require(:attendance).permit(:student_id, :date, :status)
    end

    def require_teacher
      unless current_user.teacher? && current_user.class_section == attendance.class_section
        redirect_to root_path, notice: 'You are not authorized to perform this action'
      end
    end

    def require_admin
      unless current_user.admin?
        redirect_to root_path, notice: 'You are not authorized to perform this action'
      end
    end
end
