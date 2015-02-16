# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_workspace_session',
  :secret      => '629808c952cd52b40424e2072295eeee12b2c7a6cf1956a8fb2cb38f4a04914c5f680451d09f8876a5614080b1a646363251b3c1df361a20a3fa19c50b95b7d0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
