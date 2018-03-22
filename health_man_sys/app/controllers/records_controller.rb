class RecordsController < ApplicationController
  before_action :find_record, only: [:show, :edit, :update, :destroy]

  def index
    @record = Record.all.order("created_at DESC")
  end

  def new
      @record = Record.new
  end

  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @record.update(record_params)
      redirect_to @record
    else
      render 'edit'
    end
  end

  def destroy
    @record.destroy
    redirect_to @record
  end

  private
    def find_record
      @record = Record.find(params[:id])
    end

    def record_params
      params.require(:record).permit(:appointment_time, :doctor, :observation, :previous_condition, :treatment, :referral_letter, :blood_test, :sick_note, :perscription)
    end
end
