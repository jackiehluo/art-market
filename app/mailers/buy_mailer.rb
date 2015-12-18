class BuyMailer < ApplicationMailer
  default from: 'artmarketnotifications@gmail.com'
 
  def interest_email(buyer, listing)
    @buyer = buyer
    @listing  = listing
    mail(to: @listing.email, subject: 'A buyer is interested in one of your listings!')
  end
end
