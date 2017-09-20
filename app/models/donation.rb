class Donation < ApplicationRecord

  has_bitcoin_payments

  validates :amount, presence: true, numericality: { greater_than: 1, less_than: 1000001 }

  after_create :create_payment

  def to_param
    self.bitcoin_payments.first.address
  end

  protected

  def create_payment
    self.bitcoin_payments.create!(reason: 'donation', price: self.amount * 100)
  end

  def bitcoin_payment_paid
    self.update(status: 'received')
  end

end
