module Paperclip
  class UrlGenerator
    def escape_url(url)
      if url.respond_to?(:escape)
        url.escape
      else
        URI.parse(url).to_s.gsub(escape_regex){|m| "%#{m.ord.to_s(16).upcase}" }
      end
    end
  end
end
