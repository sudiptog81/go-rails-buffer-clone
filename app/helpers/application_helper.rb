module ApplicationHelper
  def link_active?(path)
    "active" if current_page? path
  end
end
