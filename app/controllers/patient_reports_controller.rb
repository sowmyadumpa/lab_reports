class PatientReportsController < ApplicationController
  # GET /patient_reports
  # GET /patient_reports.json
  def index
    @patient_reports = PatientReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_reports }
    end
  end

  # GET /patient_reports/1
  # GET /patient_reports/1.json
  def show
    @patient_report = PatientReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_report }
    end
  end

  # GET /patient_reports/new
  # GET /patient_reports/new.json
  def new
    @patient_report = PatientReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_report }
    end
  end

  # GET /patient_reports/1/edit
  def edit
    @patient_report = PatientReport.find(params[:id])
  end

  # POST /patient_reports
  # POST /patient_reports.json
  def create
    @patient_report = PatientReport.new(params[:patient_report])

    respond_to do |format|
      if @patient_report.save
        format.html { redirect_to @patient_report, notice: 'Patient report was successfully created.' }
        format.json { render json: @patient_report, status: :created, location: @patient_report }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_reports/1
  # PUT /patient_reports/1.json
  def update
    @patient_report = PatientReport.find(params[:id])

    respond_to do |format|
      if @patient_report.update_attributes(params[:patient_report])
        format.html { redirect_to @patient_report, notice: 'Patient report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_reports/1
  # DELETE /patient_reports/1.json
  def destroy
    @patient_report = PatientReport.find(params[:id])
    @patient_report.destroy

    respond_to do |format|
      format.html { redirect_to patient_reports_url }
      format.json { head :no_content }
    end
  end
end
