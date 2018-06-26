module Api
  module V1    
    class OperatorsController < ApplicationController
      before_action :set_operator, only: [:show, :edit, :update, :destroy]

      # GET /operators
      # GET /operators.json
      def index
        #@operators = Operator.all
        @operators = Operator.where(tenant_id: current_tenant.id)
        render json: {
            message: 'Your All Operators',
            shifttransaction: @operators
          }
      end

      # GET /operators/1
      # GET /operators/1.json
      def show
      end

      # GET /operators/new
      def new
        @operator = Operator.new
      end

      # GET /operators/1/edit
      def edit
      end

      # POST /operators
      # POST /operators.json
      def create
        @operator = Operator.new(operator_params)
        @shift.tenant_id = current_tenant.id
        if @operator.save
          render json: {
            message: 'operator was successfully Created.',
            user: @operator
          }
        else
          render json: {message: 'operator Not Created'}
        end 
      end

      # PATCH/PUT /operators/1
      # PATCH/PUT /operators/1.json
      def update
        if @operator.update(operator_params)
          render json: {
            message: 'Operator was successfully Updated.',
            user: @operator
          }
        else
          render json: {message: 'Operator Not Updated'}
        end
        
      end

      # DELETE /operators/1
      # DELETE /operators/1.json
      def destroy
        @operator.destroy
        render json: {message: 'Operator was Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_operator
          @operator = Operator.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def operator_params
          params.require(:operator).permit(:operator_name, :operator_spec_id, :description, :is_active, :deleted_at, :tenant_id)
        end
    end
  end
end