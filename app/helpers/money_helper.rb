module MoneyHelper
  def cents_to_currency(cents)
    number_to_currency cents / 100.0
  end

  def price(payment)
    number_to_currency (payment / 100.0)
  end

  def amount_paid(payment)
    p = number_to_currency (payment.currency_amount_paid / 100.0)
    payment.currency_amount_paid > payment.price ? price(payment.price) : p
  end

  def btc_amount_due(payment)
    amount_due = payment.btc_amount_due
    amount_due < 0 ? 0 : amount_due.abs
  end
end
