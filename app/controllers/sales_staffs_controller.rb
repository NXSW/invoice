class SalesStaffsController < ApplicationController
  before_action :set_sales_staff, only: [:show, :edit, :update, :destroy]

  # GET /sales_staffs
  # GET /sales_staffs.json
  def index
    @sales_staffs = SalesStaff.all
  end

  # GET /sales_staffs/1
  # GET /sales_staffs/1.json
  def show
  end

  # GET /sales_staffs/new
  def new
    @sales_staff = SalesStaff.new
  end

  # GET /sales_staffs/1/edit
  def edit
  end

  # POST /sales_staffs
  # POST /sales_staffs.json
  def create
    @sales_staff = SalesStaff.new(sales_staff_params)

    respond_to do |format|
      if @sales_staff.save
        format.html { redirect_to @sales_staff, notice: 'Sales staff was successfully created.' }
        format.json { render :show, status: :created, location: @sales_staff }
      else
        format.html { render :new }
        format.json { render json: @sales_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_staffs/1
  # PATCH/PUT /sales_staffs/1.json
  def update
    respond_to do |format|
      if @sales_staff.update(sales_staff_params)
        format.html { redirect_to @sales_staff, notice: 'Sales staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_staff }
      else
        format.html { render :edit }
        format.json { render json: @sales_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_staffs/1
  # DELETE /sales_staffs/1.json
  def destroy
    @sales_staff.destroy
    respond_to do |format|
      format.html { redirect_to sales_staffs_url, notice: 'Sales staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_staff
      @sales_staff = SalesStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_staff_params
      params.require(:sales_staff).permit(:name, :phone_num, :mail, :mail_cc_1, :string, :mail_cc_2)
    end
end
