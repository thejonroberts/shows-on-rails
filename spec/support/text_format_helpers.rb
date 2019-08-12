module TextFormatHelpers
  def escaped_string(string)
    CGI.escape(string)
  end

  def url_regex(string)
    /#{Regexp.quote CGI.escape(string)}/
  end

  def html_regex(string)
    /#{Regexp.quote CGI.escapeHTML(string)}/
  end
end
