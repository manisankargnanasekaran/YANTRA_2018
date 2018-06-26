class ShifttransactionsController < ApplicationController
  before_action :set_shifttransaction, only: [:show, :edit, :update, :destroy]

  # GET /shifttransactions
  # GET /shifttransactions.json
  def index
    @shifttransactions = Shifttransaction.all
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

    respond_to do |format|
      if @shifttransaction.save
        format.html { redirect_to @shifttransaction, notice: 'Shifttransaction was successfully created.' }
        format.json { render :show, status: :created, location: @shifttransaction }
      else
        format.html { render :new }
        format.json { render json: @shifttransaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shifttransactions/1
  # PATCH/PUT /shifttransactions/1.json
  def update
    respond_to do |format|
      if @shifttransaction.update(shifttransaction_params)
        format.html { redirect_to @shifttransaction, notice: 'Shifttransaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @shifttransaction }
      else
        format.html { render :edit }
        format.json { render json: @shifttransaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shifttransactions/1
  # DELETE /shifttransactions/1.json
  def destroy
    @shifttransaction.destroy
    respond_to do |format|
      format.html { redirect_to shifttransactions_url, notice: 'Shifttransaction was successfully destroyed.' }
      format.json { head :no_content }
    end
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
