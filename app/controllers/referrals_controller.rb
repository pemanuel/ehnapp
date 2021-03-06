class ReferralsController < ApplicationController
  before_action :set_referral, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /referrals
  # GET /referrals.json
  def index
    if current_user.chw?
      @referrals = Referral.where(chwAssigned: current_user.id)
    else
      @referrals = Referral.all
    end
  end

  # GET /referrals/1
  # GET /referrals/1.json
  def show
    @chws = User.where(chw: true)
  end

  # GET /patients/1/referrals/new
  def new
    @referral = Referral.new
    @patient = Patient.find(params[:patient_id]) if params[:patient_id]
    @chws = User.where(chw: true)
  end

  # GET /referrals/1/edit
  def edit
    @chws = User.where(chw: true)
  end

  # POST /referrals
  # POST /referrals.json
  def create
    @patient  = Patient.find(params[:patient_id])
    @referral = @patient.referrals.build(referral_params)

    respond_to do |format|
      if @referral.save
        format.html { redirect_to @referral, notice: 'Referral was successfully created.' }
        format.json { render :show, status: :created, location: @referral }
      else
        format.html { render :new }
        format.json { render json: @referral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referrals/1
  # PATCH/PUT /referrals/1.json
  def update
    respond_to do |format|
      if @referral.update(referral_params)
        format.html { redirect_to @referral, notice: 'Referral was successfully updated.' }
        format.json { render :show, status: :ok, location: @referral }
      else
        format.html { render :edit }
        format.json { render json: @referral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referrals/1
  # DELETE /referrals/1.json
  def destroy
    @referral.destroy
    respond_to do |format|
      format.html { redirect_to referrals_url, notice: 'Referral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referral
      @referral = Referral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referral_params
      params.require(:referral).permit(:formtype, :patient_id, :vistDate, :startTime, :endTime, :visitType, 
        :referralDate, :referringProvider, :referringOrgAgency, :referringCHW, :primaryDiag, :notes, :goals, 
        :reasonForCHWReferral, :takingMeds, :takingMedsValue, :otherMedicalConcerns, :ifYes, :chwAssigned, :nextVistDate)
    end
end
