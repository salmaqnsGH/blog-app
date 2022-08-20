class ApplicationController < ActionController::Base
    protect_from_forgery

    include DeviseWhitelist

    before_action :set_source

    def set_source
        session[:source] = params[:q] if params[:id]
    end
end
