class MailPreview < MailView

  def order_confirmation_email
    order = Spree::Order.complete.first
    Spree::OrderMailer.confirm_email(order)
  end

  def order_cancel_email
    order = Spree::Order.complete.first
    Spree::OrderMailer.cancel_email(order)
  end

  def shipment_email
    shipment = Spree::Shipment.first
    Spree::ShipmentMailer.shipped_email(shipment)
  end

  def contact_form
    message = Message.first
    Notifier.contact_form(message)
  end

end