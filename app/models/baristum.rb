class Baristum < ActiveRecord::Base
  validates :email, :presence => true, :uniqueness => true

  before_save :send_confirmation, :if => :new_record?

  private
    def send_confirmation
      Contact.barista_send_to_us(self).deliver if Contact.send_barista_confirmation(self).deliver
    end
end
