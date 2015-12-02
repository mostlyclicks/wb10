module ApplicationHelper

  def main_nav
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.menu_tag = "div class=\"collapse navbar-collapse navbar-inverse main-nav\" id=\"main-nav-collapse\""
    presenter.list_tag = "ul class=\"nav navbar-nav\""
    presenter.max_depth = 0
    presenter
  end

  def main_nav_nobg
    presenter = Refinery::Pages::MenuPresenter.new(refinery_menu_pages, self)
    presenter.menu_tag = "div class=\"collapse navbar-collapse \" id=\"main-nav-collapse\""
    presenter.list_tag = "ul class=\"nav navbar-nav pull-left-xs navbar-right\""
    presenter.selected_css = "active"
    presenter.max_depth = 0
    presenter
  end


  def child_sub_menu_pages
    #This works on parent and sub pages -- use 'select' instead of 'detect'
    sub_menu_items = Refinery::Menu.new(refinery_menu_pages.select{ |item| item.parent_id == @page.root.id })
    # style = page_style(@page)
    presenter = Refinery::Pages::MenuPresenter.new(sub_menu_items, self)
    presenter.menu_tag = "div class=\"collapse navbar-collapse \" id=\"sub-nav-collapse\""
    # presenter.css = "#{style}"
    presenter.list_tag = "ul class=\"nav nav-pills  \""
    # presenter.list_tag_css = "nav nav-pills nav-stacked"
    presenter.max_depth = 1
    presenter.selected_css = "active"
    first_css = :first
    last_css = :last
    presenter
  end

  def child_sub_menu_pages_mobile
    #This works on parent and sub pages -- use 'select' instead of 'detect'
    sub_menu_items = Refinery::Menu.new(refinery_menu_pages.select{ |item| item.parent_id == @page.root.id })
    # style = page_style(@page)
    presenter = Refinery::Pages::MenuPresenter.new(sub_menu_items, self)
    presenter.menu_tag = "div class=\"collapse3 navbar-collapse3 \" id=\"sub-nav-collapse\""
    # presenter.css = "#{style}"
    presenter.list_tag = "ul class=\"nav nav-pills3  \" style=\"margin-top:-60px;\""
    # presenter.list_tag_css = "nav nav-pills nav-stacked"
    presenter.max_depth = 1
    presenter.selected_css = "active"
    first_css = :first
    last_css = :last
    presenter
  end

end
