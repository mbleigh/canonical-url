require 'canonical_url'

ActionController::Base.send :include, CanonicalURL::ControllerExtensions
ActionView::Base.send :include, CanonicalURL::Helpers