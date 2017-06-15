require 'rails_helper'

RSpec.describe SupportRequest, type: :model do
  subject { described_class.new }

  before(:each) do
    @customer = User.create(:name=>"Customer", :password=>"customer", :login=>"customer")
    @agent = User.create(:name=>"Agent", :password=>"agent", :login=>"agent")
  end

  it "is valid with valid attributes" do    
    subject.description = "Test description"
    subject.customer = @customer
    subject.agent = @agent
    subject.description = "testing the description"
    expect(subject).to be_valid
  end

  it "is not valid without a customer"
  it "is not valid without a agent"
end
