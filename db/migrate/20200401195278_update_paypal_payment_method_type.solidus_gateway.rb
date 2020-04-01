# This migration comes from solidus_gateway (originally 20131008221012)
class UpdatePaypalPaymentMethodType < SolidusSupport::Migration[4.2]
  def up
    Spree::PaymentMethod.where(:type => "Spree::Gateway::PayPal").update_all(:type => "Spree::Gateway::PayPalGateway")
  end
  
  def down
    Spree::PaymentMethod.where(:type => "Spree::Gateway::PayPalGateway").update_all(:type => "Spree::Gateway::PayPal")
  end
end
