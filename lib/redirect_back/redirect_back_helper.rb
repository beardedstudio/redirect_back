module RedirectBack
  module Helper
    def redirect_back_field
      # if redirect is already set, we should keep it!
      if params[:redirect] and params[:redirect][:back]
        hidden_field 'redirect', 'back', :value => params[:redirect][:back]
      # if back isn't the same as the current page, return a hidden field
      # :back is always a full URI, so we have to set :only_path to false
      elsif url_for(:back) != url_for(:only_path => false) and url_for(:back) != 'javascript:history.back()'
        hidden_field 'redirect', 'back', :value => url_for(:back)
      end
    end
  end
end