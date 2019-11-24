class ApplicationController < ActionController::Base

  # Enables protection against cross-site request forgery (CSRF) attacks.
  protect_from_forgery with: :exception

end
