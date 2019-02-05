class City < ApplicationRecord
  has_many :users

  validates :name, presence: true
  validates :zip_code, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[abAB]))[0-9]{3}\z/, message: "A valid zip-code please." }
end
