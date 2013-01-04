class PatientsController < ApplicationController

  before_filter :require_login
  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.order(:id).page(params[:page])   

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patients }
    end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/new
  # GET /patients/new.json
  def new
    @patient = Patient.new    
    respond_to do |format|
      format.js{render :partial => "form"}            
    end
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
    respond_to do |format|
      format.js{render :partial => "form"}
    end
  end

  # POST /patients
  # POST /patients.json
  def create
    params[:patient][:dob] = Time.parse(params[:patient]["dob(1i)"]+"-"+params[:patient]["dob(2i)"]+"-"+params[:patient]["dob(3i)"])
    @patient = Patient.new(params[:patient])    
    @patient.save

    @patients = Patient.order(:id).page(params[:page])

    respond_to do |format|       
        format.js
    end
  end

  # PUT /patients/1
  # PUT /patients/1.json
  def update
    @patient = Patient.find(params[:id])
    @patient.update_attributes(params[:patient])
    @patients = Patient.order(:id).page(params[:page])
   
    respond_to do |format|        
      format.js {render :action => :create}
    end    

  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :no_content }
    end
  end
end
