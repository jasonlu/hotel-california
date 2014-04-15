class Payment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :visit
  has_one :billing_address
  accepts_nested_attributes_for :billing_address
  before_create :generate_uuid

  def generate_uuid
    self.id = SecureRandom.uuid
  end
end
