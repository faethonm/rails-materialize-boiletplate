require 'spec_helper'

describe Permutator do
  before { @permutator = FactoryGirl.build(:permutator) }

  # let(:@permutator) { FactoryGirl.build :permutator }
  subject { @permutator }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:company_name) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:company_domain) }
end
