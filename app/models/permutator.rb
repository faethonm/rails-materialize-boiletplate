class Permutator < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company_domain, presence: true
end
