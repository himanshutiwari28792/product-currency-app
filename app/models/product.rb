class Product < ApplicationRecord
  # instance methods
  def get_price_by_location(params)
    return self.price.in(:inr).to_s if params[:country].blank?
    country_name = params[:country]
    country = ISO3166::Country.find_country_by_name(country_name)
    return self.price.in(:inr).to_s if country.blank?
    currency_code = country.currency['code']
    price = self.price.in(:inr).to(currency_code.downcase.to_sym).to_s rescue nil
    price = price.present? ? price : self.price.in(:inr).to_s
    price
  end

end

