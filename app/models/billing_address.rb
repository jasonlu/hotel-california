class BillingAddress < ActiveRecord::Base
  belongs_to :payment
end
