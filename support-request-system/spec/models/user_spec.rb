require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new }
  it "is valid with valid attributes" do    
    subject.name = "User1"
    subject.password = "User1"
    subject.login = "User1"

    expect(subject).to be_valid
  end

  it "is not valid without a name"
  it "is not valid without a password"
  it "is not valid without a login"
end
