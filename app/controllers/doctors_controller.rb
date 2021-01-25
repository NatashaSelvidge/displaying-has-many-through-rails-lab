class DoctorsController < ApplicationController
  def index
    @doctor = Doctor.all 
  end 

  def show 
    @doctor = Doctor.find(params[:id ])
  end 


  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end 

  

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end 