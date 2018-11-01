class BillTosController < ApplicationController
  before_action :set_bill_to, only: [:show, :edit, :update, :destroy]

  # GET /bill_tos
  # GET /bill_tos.json
  def index
    @q = BillTo.ransack(params[:q])
    @bill_to = @q.result(distinct: true)
    @bill_tos = BillTo.all
  end

  # GET /bill_tos/1
  # GET /bill_tos/1.json
  def show
  end

  # GET /bill_tos/new
  def new
    @bill_to = BillTo.new
  end

  # GET /bill_tos/1/edit
  def edit
  end

  # POST /bill_tos
  # POST /bill_tos.json
  def create
    @bill_to = BillTo.new(bill_to_params)

    respond_to do |format|
      if @bill_to.save
        format.html { redirect_to @bill_to, notice: 'Bill to was successfully created.' }
        format.json { render :show, status: :created, location: @bill_to }
      else
        format.html { render :new }
        format.json { render json: @bill_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_tos/1
  # PATCH/PUT /bill_tos/1.json
  def update
    respond_to do |format|
      if @bill_to.update(bill_to_params)
        format.html { redirect_to @bill_to, notice: 'Bill to was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_to }
      else
        format.html { render :edit }
        format.json { render json: @bill_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_tos/1
  # DELETE /bill_tos/1.json
  def destroy
    @bill_to.destroy
    respond_to do |format|
      format.html { redirect_to bill_tos_url, notice: 'Bill to was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_to
      @bill_to = BillTo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_to_params
      params.require(:bill_to).permit(:name)
    end
end
