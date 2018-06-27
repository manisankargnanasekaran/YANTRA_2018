module Api
  module V1
  	class ApplicationController < ActionController::Base
	    before_action :authenticate_request
      attr_reader :current_user
      attr_reader :current_tenant
      include ExceptionHandler

    private
     def authenticate_request
       @current_user = AuthorizeApiRequest.call(request.headers).result
       @current_tenant = current_user.tenant if @current_user.present?
       render json: { error: 'Not Authorized' }, status: 401 unless @current_user
     end
	  end
  end
end