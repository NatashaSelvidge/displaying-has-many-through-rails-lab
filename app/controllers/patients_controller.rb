class PatientsController < ApplicationController

    def index
    @patient = Patient.all 
  end 

  def show 
    @patient = Patient.find_by(params[:id ])
  end 


  private

  def set_patient
    @patient = Patient.find(params[:id])
  end 

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
