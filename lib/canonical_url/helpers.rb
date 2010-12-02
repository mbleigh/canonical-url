module CanonicalURL
  module Helpers
    def canonical_link_tag(url = nil)
      return '' unless url || @canonical_url
      tag('link', :rel => 'canonical', :href => url || @canonical_url || request.url)
    end
  end
end
