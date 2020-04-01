# This migration comes from solidus_gateway (originally 20130213222555)
class UpdateStripePaymentMethodType < SolidusSupport::Migration[4.2]
  def up
    Spree::PaymentMethod.where(:type => "Spree::Gateway::Stripe").update_all(:type => "Spree::Gateway::StripeGateway")
  end
  
  def down
    Spree::PaymentMethod.where(:type => "Spree::Gateway::StripeGateway").update_all(:type => "Spree::Gateway::Stripe")
  end
end
