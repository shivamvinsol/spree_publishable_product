Spree::Product.class_eval do

  scope :published, -> { where(publishable: true) }

  def self.active(currency = nil)
    available(nil, currency).published
  end

end