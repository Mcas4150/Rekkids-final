Rails.configuration.stripe = {
  publishable_key: ENV['pk_live_SU7WeBtie5YTCbLMdkVIgA7t'],
  secret_key:      ENV['sk_live_94QJv8LvoiP45cA7zi1AV46k']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
