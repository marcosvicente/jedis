FactoryBot.define do
  factory :resident, class: 'Resident' do
    full_name {Faker::Name.name }
    cpf { CPF.generate }
    cns { '843675934970002' }
    email { Faker::Internet.email }
    birth_date { Faker::Date.birthday(min_age: 18, max_age: 65) }
    phone_number { Faker::PhoneNumber.cell_phone_with_country_code }
    active { nil }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end  
  end
end