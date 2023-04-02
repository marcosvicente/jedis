# == Schema Information
#
# Table name: residents
#
#  id           :bigint           not null, primary key
#  active       :boolean          not null
#  birth_date   :string           not null
#  cns          :string           not null
#  cpf          :string           not null
#  email        :string           not null
#  full_name    :string           not null
#  phone_number :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Resident, type: :model do
  subject(:resident) { build(:resident, :active) }
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:cpf) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone_number) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid cpf' do
    subject.cpf = '99999999999'
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid cns' do
    subject.cns = '999999999999999'
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid birth_date' do
    subject.birth_date = DateTime.now + 2.years
    expect(subject).to_not be_valid
  end
end
