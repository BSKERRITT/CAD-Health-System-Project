class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update]

  def index
    @patient = Patient.all.order("created_at DESC")
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to @patient
    else
      render 'edit'
    end
  end

  private
    def find_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:first_name, :surname, :date_of_birth, :address, :phone_no, :medical_card, :medical_insurance)
    end
end
