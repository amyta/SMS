OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '856911651102498', 'b0f0e206c28734cc71b60123c2f327b3', 
  {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}},
  callback_url: 'http://localhost:3000'
end
