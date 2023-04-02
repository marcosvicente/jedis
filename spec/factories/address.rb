FactoryBot.define do
  factory :address, class: 'Address' do
    cep { '18550000' }
    city { Faker::Address.city }
    complement { 'casa' }
    ibge { Faker::Address.city }
    neighborhood { Faker::Address.addr }
    state { Faker::Address.state }
    street { Faker::Address.street }
  end
end