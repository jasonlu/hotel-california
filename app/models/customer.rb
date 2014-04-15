class Customer < ActiveRecord::Base
  has_one :guest
  has_one :payment
  has_many :visits
  accepts_nested_attributes_for :guest
  before_save :encrypt_password
  before_create :generate_account_number, :generate_uuid

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true

  def encrypt_password
    
    self.password = Customer.encrypt_password(self.password)
    
  end

  def self.encrypt_password(password)
    salt = Rails.configuration.secret_key_base
    password = Digest::SHA1.hexdigest(password + salt)
    return password
  end

  def generate_account_number
    id = Customer.maximum(:id)
    id = 0 if id.blank?
    self.account_number = 1000065535 + id
  end

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
