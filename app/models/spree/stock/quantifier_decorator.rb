Spree::Stock::Quantifier.class_eval do

  def can_supply?(required = 1)
    variant.available? && (total_on_hand >= required || backorderable?) && variant.product.publishable
  end
end