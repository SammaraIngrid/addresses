class Address < ApplicationRecord
  validates :zip_code, uniqueness: true, format: { with: /\A\d{5}-\d{3}\z/, message: "deve estar no formato xxxxx-xxx" }
  validates :zip_code, :street, :neighborhood, :number, :city, :state, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ['zip_code']
  end
end
