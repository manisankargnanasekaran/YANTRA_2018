module Api
  module V1    
    class ShifttransactionsController < ApplicationController
      before_action :set_shifttransaction, only: [:show, :edit, :update, :destroy]

      # GET /shifttransactions
      # GET /shifttransactions.json
      def index
        #@shifttransactions = Shifttransaction.all
        @shifttransactions = Shift.find(tenant_id: current_tenant).shifttransactions
        render json: {
            message: 'Your All Shifts',
            shifttransaction: @shifttransactions
          }
      end

      # GET /shifttransactions/1
      # GET /shifttransactions/1.json
      def show
      end

      # GET /shifttransactions/new
      def new
        @shifttransaction = Shifttransaction.new
      end

      # GET /shifttransactions/1/edit
      def edit
      end

      # POST /shifttransactions
      # POST /shifttransactions.json
      def create
        @shifttransaction = Shifttransaction.new(shifttransaction_params)
          if @shifttransaction.save
            render json: {
              message: 'Shifttransaction was successfully Created.',
              shifttransaction: @shifttransaction
            }
          else
           render json: {message: 'Shifttransaction Not Created'}
          end
        
      end

      # PATCH/PUT /shifttransactions/1
      # PATCH/PUT /shifttransactions/1.json
      def update
        if @shifttransaction.update(shifttransaction_params)
          render json: {
              message: 'Shifttransaction was successfully updated.',
              shifttransaction: @shifttransaction
            }
        else
          render json: {message: 'Shifttransaction Not Updated'}
        end   
      end

      # DELETE /shifttransactions/1
      # DELETE /shifttransactions/1.json
      def destroy
        @shifttransaction.destroy
        render json: {message: 'Shifttransaction was Deleted'}
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_shifttransaction
          @shifttransaction = Shifttransaction.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def shifttransaction_params
          params.require(:shifttransaction).permit(:shift_start_time, :shift_end_time, :actual_working_hours, :shift_no, :isactive, :deleted_at, :shift_start_time_dummy, :shift_end_time_dummy, :actual_working_hours_dummy, :actual_working_without_break, :shift_id)
        end
    end
  end
end