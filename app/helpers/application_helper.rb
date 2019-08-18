module ApplicationHelper
  BRAND_TITLE = 'ShowYrOwnWay'.freeze

  def brand_title
    BRAND_TITLE
  end

  def page_title(title = BRAND_TITLE, append_brand = true)
    if title.present? && title != BRAND_TITLE
      return title + " | #{brand_title}" if append_brand

      title
    else
      brand_title
    end
  end
end
