class Company < ApplicationRecord
  has_many :employees
  has_many :reimbursement_claims, through: :employees
end

