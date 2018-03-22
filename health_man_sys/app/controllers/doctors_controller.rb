class DoctorsController < ApplicationController
  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctor = Doctor.all.order("created_at DESC")
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor
    else
      render 'edit'
    end
  end

  def destroy
    @doctor.destroy
    redirect_to root_path
  end

  private
    def find_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:first_name, :surname, :phone_no, :speciality)
    end
end
