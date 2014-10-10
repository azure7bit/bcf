class Baristum < ActiveRecord::Base

  before_save :send_confirmation, :if => :new_record?

  private
    def send_confirmation
      Contact.send_barista_confirmation(self).deliver
    end
end
