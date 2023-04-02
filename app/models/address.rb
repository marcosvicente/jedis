# == Schema Information
#
# Table name: addresses
#
#  id           :bigint           not null, primary key
#  cep          :string
#  city         :string
#  complement   :string
#  ibge         :string
#  neighborhood :string
#  state        :string
#  street       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  resident_id  :bigint
#
# Indexes
#
#  index_addresses_on_resident_id  (resident_id)
#
# Foreign Keys
#
#  fk_rails_...  (resident_id => residents.id)
#
class Address < ApplicationRecord
  belongs_to :resident

  validates :cep, :street, :neighborhood, :city, :state, presence: true
end
