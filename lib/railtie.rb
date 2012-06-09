require 'canonical_url'

module CanonicalURL
  class Railtie < Rails::Railtie
    initializer "canonical_url.action_controller" do
      ActionController::Base.send :include, CanonicalURL::ControllerExtensions
    end

    initializer "canonical_url.action_view" do
      ActionView::Base.send :include, CanonicalURL::Helpers
    end
  end
end
