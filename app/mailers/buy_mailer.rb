class BuyMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def buy_email(buyer, seller, listing)
    @buyer = buyer
    @listing  = listing
    mail(to: @listing.email, subject: 'A buyer is interested in one of your listings!')
  end
end