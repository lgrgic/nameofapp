if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_RFfFqQ6nKbQnC6hXLwrS1u9D',
    secret_key: 'sk_test_zPLDJDw9hD8dWe7Ml48gIf1P'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
