class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @reimburse_count = ReimbursementClaim.count.to_i
    @company_count = Company.count.to_i
    @employee_count = Employee.count.to_i
  end
end
