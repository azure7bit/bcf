class Contact < ActionMailer::Base
  default from: "noreply@bandungcoffeefestival.com"

  def send_buyer_confirmation(buyer)
  	@email = buyer.email
  	@name = buyer.name
    mail(:to => %w{@email info@bandungcoffeefestival.com}, subject: "Buyer Registration")
  end

  def send_barista_confirmation(barista)
  	@email = barista.email
  	@name = barista.name
    mail(:to => %w{@email info@bandungcoffeefestival.com}, subject: "Barista Registration")
  end

  def send_visitor_confirmation(visitor)
  	@email = visitor.email
  	@name = visitor.name
    mail(:to => %w{@email info@bandungcoffeefestival.com}, subject: "Thanks For Contact Us")
  end

  def send_to_us(visitor)
    @email = visitor.email
    @name = visitor.name
    @message = visitor.message
    mail(:to => "info@bandungcoffeefestival.com", subject: visitor.subject)
  end

end
