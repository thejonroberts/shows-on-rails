# frozen_string_literal: true

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

  def normalized_phone(phone)
    PhonyRails.normalize_number(phone, cc: '1')
  end

  def formatted_phone(phone)
    phone.phony_formatted(format: :national, spaces: ' ')
  end
end
