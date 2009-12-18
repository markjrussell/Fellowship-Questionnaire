# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_safequest_session',
  :secret      => '5fb683ac930157905bd891273ef2c1e08e576e2eadf3769e17cd8a2b8a8a2098c52446e87770897b2a349b8de4568b636a17c0a57aa1acc3652dc415434f8f68'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
