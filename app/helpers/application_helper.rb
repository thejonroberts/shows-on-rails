module ApplicationHelper
  def brand_title
    'ShowYrOwnWay'
  end

  def page_title(title, append_brand = true)
    if title.present?
      return title + " | #{brand_title}" if append_brand

      title
    else
      brand_title
    end
  end
end
