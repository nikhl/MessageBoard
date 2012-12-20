OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'NBIC9U1Qzmf9WJzxFLPg', 'ZHJIEUWOuS8WZ1cClVJtkyZWBS5SF99S1w8mFAR5U'
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '139575262862250', '9afa94da4e140a8e2315e6b656176256'
end