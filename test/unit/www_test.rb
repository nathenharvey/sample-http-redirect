require File.dirname(__FILE__) + '/../test_helper'

class WwwCustominkRedirectTest < HTTPRedirectTest
  self.domain = (ENV["DOMAIN"])? ENV["DOMAIN"] : "www.customink.com"
  
  # homepage
  should_not_redirect "/"

  # legacy lab link
  should_redirect "/cink/r.jsp?E=ci&F=t", :to => "/lab/"

  # lab print locations
  should_redirect "/lab/help/print_locations", :to => "/lab/help/print"
  
  # feedback rss
  should_redirect "/uc/feedback.xml", :to => "/reviews/feed.rss"

  # favicon
  should_redirect "/anything/favicon.ico", :to => "/favicon.ico"
  should_redirect "/accounts/favicon.ico", :to => "/favicon.ico"
  should_redirect "/clipart/favicon.ico", :to => "/favicon.ico"
end