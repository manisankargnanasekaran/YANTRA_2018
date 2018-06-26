module Api
  module V1
    class TenantsController < ApplicationController
      before_action :set_tenant, only: [:show, :edit, :update, :destroy]

      # GET /tenants
      # GET /tenants.json
      def index
        @tenants = Tenant.all
        render json: @tenants
      end

      # GET /tenants/1
      # GET /tenants/1.json
      def show
      end

      # GET /tenants/new
      def new
        @tenant = Tenant.new
      end

      # GET /tenants/1/edit
      def edit
      end

      # POST /tenants
      # POST /tenants.json
      def create
        @tenant = Tenant.new(tenant_params)
          if @tenant.save
            render json: {
              message: 'Tenant was successfully Created.',
              user: @tenant
            }
          else
            render json: {message: 'Tenant Not Created'}
          end
      end

      # PATCH/PUT /tenants/1
      # PATCH/PUT /tenants/1.json
      def update
        if @tenant.update(tenant_params)
          render json: {
              message: 'Tenant was successfully updated.',
              user: @tenant
            }
        else
          render json: {message: 'Tenant Not Created'}
        end
        
      end

      # DELETE /tenants/1
      # DELETE /tenants/1.json
      def destroy
        @tenant.destroy
        render json: {message: 'Tenant was Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_tenant
          @tenant = Tenant.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def tenant_params
          params.require(:tenant).permit(:tenant_name, :address_line1, :address_line2, :city, :state, :country, :pincode, :active_by, :isactive, :deleted_at)
        end
    end
  end
end