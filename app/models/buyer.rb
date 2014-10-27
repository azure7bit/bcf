class Buyer < ActiveRecord::Base
  validates :email, :presence => true, :uniqueness => true

  before_save :send_confirmation, :if => :new_record?

  private
    def send_confirmation
      Contact.buyer_send_to_us(self).deliver if Contact.send_buyer_confirmation(self).deliver
    end
end
