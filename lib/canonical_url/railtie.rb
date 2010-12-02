module CanonicalURL
  class Railtie < Rails::Railtie
    initializer 'canonical_url.insert_canonical_url' do
      ActionController::Base.send(:include, CanonicalURL::ControllerExtensions)
      ActionView::Base.send(:include, CanonicalURL::Helpers)
    end
  end
end
