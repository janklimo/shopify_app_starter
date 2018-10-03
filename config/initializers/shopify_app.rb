ShopifyApp.configure do |config|
  # TODO rename app
  config.application_name = "Shopify App Starter"
  config.api_key = ENV['SHOPIFY_CLIENT_API_KEY']
  config.secret = ENV['SHOPIFY_CLIENT_API_SECRET']
  # TODO update scopes
  config.scope = "read_products, write_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
