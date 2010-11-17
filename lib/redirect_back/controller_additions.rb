module RedirectBack
  module ControllerAdditions
    def redirect_back_path
      if params[:redirect]
        params[:redirect][:back]
      end
    end
  end
end
