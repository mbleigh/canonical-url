module CanonicalURL
  module ControllerExtensions
    def canonical_url(url_for_options = {})
      case url_for_options
        when Hash
          @canonical_url = url_for(url_for_options)
        else
          @canonical_url = url_for_options
      end
    end
  end
  
  module Helpers
    def canonical_link_tag(url = nil)
      return '' unless url || @canonical_url
      tag('link', :rel => 'canonical', :href => url || @canonical_url || request.url)
    end
  end
end