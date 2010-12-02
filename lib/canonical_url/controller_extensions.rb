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
end
