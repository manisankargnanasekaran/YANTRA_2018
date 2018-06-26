class OperatorAllocationsController < ApplicationController
  before_action :set_operator_allocation, only: [:show, :edit, :update, :destroy]

  # GET /operator_allocations
  # GET /operator_allocations.json
  def index
    @operator_allocations = OperatorAllocation.all
  end

  # GET /operator_allocations/1
  # GET /operator_allocations/1.json
  def show
  end

  # GET /operator_allocations/new
  def new
    @operator_allocation = OperatorAllocation.new
  end

  # GET /operator_allocations/1/edit
  def edit
  end

  # POST /operator_allocations
  # POST /operator_allocations.json
  def create
    @operator_allocation = OperatorAllocation.new(operator_allocation_params)

    respond_to do |format|
      if @operator_allocation.save
        format.html { redirect_to @operator_allocation, notice: 'Operator allocation was successfully created.' }
        format.json { render :show, status: :created, location: @operator_allocation }
      else
        format.html { render :new }
        format.json { render json: @operator_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operator_allocations/1
  # PATCH/PUT /operator_allocations/1.json
  def update
    respond_to do |format|
      if @operator_allocation.update(operator_allocation_params)
        format.html { redirect_to @operator_allocation, notice: 'Operator allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @operator_allocation }
      else
        format.html { render :edit }
        format.json { render json: @operator_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operator_allocations/1
  # DELETE /operator_allocations/1.json
  def destroy
    @operator_allocation.destroy
    respond_to do |format|
      format.html { redirect_to operator_allocations_url, notice: 'Operator allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operator_allocation
      @operator_allocation = OperatorAllocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operator_allocation_params
      params.require(:operator_allocation).permit(:operator_id, :shifttransaction_id, :machine_id, :tenant_id, :description, :from_date, :to_date)
    end
end
