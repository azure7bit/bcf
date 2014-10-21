class Visitor < ActiveRecord::Base
  before_save :send_confirmation, :if => :new_record?

  private
    def send_confirmation
      	Contact.send_to_us(self).deliver if Contact.send_visitor_confirmation(self).deliver
    end
end
