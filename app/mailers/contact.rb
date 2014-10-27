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

  def send_to_us(visitor)
    @email = visitor.email
    @name = visitor.name
    @message = visitor.message
    mail(:to => "info@bandungcoffeefestival.com", subject: visitor.subject, from: @email)
  end

  def barista_send_to_us(barista)
    @name = barista.name
    @gender = barista.gender
    @company = barista.company
    @job_title = barista.job_title
    @company_address = barista.company_address
    @city = barista.city
    @postal_code = barista.postal_code
    @country = barista.country
    @telp = barista.telp
    @fax = barista.fax
    @mobile = barista.mobile
    @email = barista.email
    @age = Date.today.year - barista.age.year
    mail(:to => "info@bandungcoffeefestival.com", subject: "Barista Registration", from: @email)
  end

  def buyer_send_to_us(buyer)
    @name = buyer.name
    @gender = buyer.gender
    @company = buyer.company
    @job_title = buyer.job_title
    @company_address = buyer.company_address
    @city = buyer.city
    @postal_code = buyer.postal_code
    @country = buyer.country
    @telp = buyer.telp
    @fax = buyer.fax
    @mobile = buyer.mobile
    @email = buyer.email
    @website = buyer.website
    mail(:to => "info@bandungcoffeefestival.com", subject: "Buyer Registration", from: @email)
  end

end