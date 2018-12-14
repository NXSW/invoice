class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy, :pdf]

  # GET /bills
  # GET /bills.json
  def index
    @bills = Bill.all
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    respond_to do |format|
      format.html { render 'show' }
      format.pdf do
        render pdf: 'file_name',
               layout: 'bill_pdf_layouts.html'
      end
    end
  end

  # GET /bills/new
  def new
    @bill = Bill.new
  end

  # GET /bills/1/edit
  def edit
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill }
      else
        format.html { render :edit }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'Bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(
        :month,
        :pay_period,
        :member_name,
        :member_sex,
        :dev_content,
        :unit_price,
        :work_time,
        :upper_standerd,
        :lower_standerd,
        :bill_content_id,
        :cal_rule,
        :from,
        :to,
        :term,
        :payment_terms,
        :bill_to_name,
        :bill_to_charge_people,
        :company_name,
        :tel_1,
        :mail_1,
        :address_1,
        :postno_1,
        :bank_account_1
      )
    end
end
