require 'rails_helper'

RSpec.describe User, type: :model do
  #subject { build(:user) }
  let(:user) { build(:user) }
  
  it { expect(user).to validate_presence_of(:email) }
  it { expect(user).to validate_uniqueness_of(:email).case_insensitive }
  it { expect(user).to validate_confirmation_of(:password) }
  it { expect(user).to allow_value("wagner@email.com").for(:email) }

  # context 'when name is blank' do
  #   before { user.name = " " }
  #   it { expect(user).not_to be_valid }

  # end

  # context 'when name is blank' do
  #   before { user.name = nil }
  #   it { expect(user).not_to be_valid }

  # end
  #before { @user = FactoryGirl.build(:user) }
  #it { expect(@user).to respond_to(:email) }
  #it { expect(@user).to respond_to(:name) }
  #it { expect(@user).to respond_to(:password) }
  #it { expect(@user).to respond_to(:password_confirmation) }
  #it { expect(@user).to be_valid }
  # subject = User.new

  #it { is_expected.to respond_to(:email) }
  #it { is_expected.to respond_to(:name) }
  #it { is_expected.to respond_to(:password) }
  #it { is_expected.to respond_to(:password_confirmation) }
  #it { is_expected.to be_valid }
end
