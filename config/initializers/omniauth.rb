OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '499498274557-kc91ap6ftb5ni520qljfp5cgj5bm0rtj.apps.googleusercontent.com', 'N3QQyS-sxXBZqw0SZmbkLs9e', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end