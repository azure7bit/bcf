class Contact < ActionMailer::Base
  default from: "noreply@bandungcoffeefestival.com"

  def send_buyer_confirmation(buyer)
  	@email = buyer.email
  	@name = buyer.name
    mail(:to => @email, subject: "Buyer Registration")
  end

  def send_barista_confirmation(barista)
  	@email = barista.email
  	@name = barista.name
    mail(:to => @email, subject: "Barista Registration")
  end

  def send_visitor_confirmation(visitor)
  	@email = visitor.email
  	@name = visitor.name
    mail(:to => @email, subject: "Thanks For Contact Us")
  end

end
