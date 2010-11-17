require "redirect_back"
require "redirect_back/redirect_back_helper"
require "redirect_back/controller_additions"
require "rails"

module RedirectBack
  class Railtie < Rails::Railtie
    ActionView::Base.send :include, RedirectBack::Helper
    ActionController::Base.send :include, RedirectBack::ControllerAdditions
  end
end
