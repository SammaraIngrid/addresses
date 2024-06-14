class Address < ApplicationRecord
  validates :zip_code, uniqueness: true, format: { with: /\A\d{5}-\d{3}\z/, message: "deve estar no formato 57081-555" }
end
