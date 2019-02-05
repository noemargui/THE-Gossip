class User < ApplicationRecord
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :join_table_user_private_messages
  has_many :received_messages, foreign_key: 'sender_id', class_name: "PrivateMessage", through: :join_table_user_private_messages
  has_many :gossips
  has_many :comments
  has_many :likes
  belongs_to :city

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Email Adress Please"}
  validates :age, presence: true, numericality: { greater_than: 0 }
end
