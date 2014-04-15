class Guest < ActiveRecord::Base
  belongs_to :customer
  validates :lname, presence: true
  validates :fname, presence: true
  alias_attribute :last_name, :lname
  alias_attribute :first_name, :fname

  def fullname
    self.fname + " " + self.lname
  end
end
