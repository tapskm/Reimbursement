class ReimbursementClaimsController < ApplicationController
  before_action :set_reimbursement_claim, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /reimbursement_claims
  def index
    @reimbursement_claims = ReimbursementClaim.all
  end

  # GET /reimbursement_claims/1
  def show
  end

  # GET /reimbursement_claims/new
  def new
    @reimbursement_claim = ReimbursementClaim.new
  end

  # GET /reimbursement_claims/1/edit
  def edit
  end

  # POST /reimbursement_claims
  def create
    @reimbursement_claim = ReimbursementClaim.new(reimbursement_claim_params)

    if @reimbursement_claim.save
      redirect_to @reimbursement_claim, notice: 'Reimbursement claim was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reimbursement_claims/1
  def update
    if @reimbursement_claim.update(reimbursement_claim_params)
      redirect_to @reimbursement_claim, notice: 'Reimbursement claim was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reimbursement_claims/1
  def destroy
    @reimbursement_claim.destroy
    redirect_to reimbursement_claims_url, notice: 'Reimbursement claim was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reimbursement_claim
      @reimbursement_claim = ReimbursementClaim.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reimbursement_claim_params
      params.require(:reimbursement_claim).permit(:purpose, :amount, :date_of_expenditure, :employee_id, :receipt)
    end
end

