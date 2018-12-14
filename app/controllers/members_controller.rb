class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy, :bill]

  def index
    @q = Member.ransack(params[:q])
    @members = @q.result.page(params[:page])
    @bill_tos = BillTo.all
  end

  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: '追加しました' }
      else
        format.html { render :new }
      end
    end
  end

  def bill
    @bill = Bill.new
    @bill.bill_to_name = @member.bill_to.name
    @bill.company_name = @member.company.name
    @bill.member_name = @member.name
  end

  def pdf
    render 'bills/create'
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      params.require(:member).permit(:name)
      if @member.update(member_params)
        format.html { redirect_to @member, notice: '更新しました' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.fetch(:member, {})
      params.require(:member).permit(
        :name,
        :member_no,
        :birthday,
        :sex,
        :company_id,
        :bill_to_id,
        :sales_staff_id,
        :payment_terms,
        :unit_price,
        :upper_standerd,
        :lower_standerd,
        :dev_content,
        :task
      )
    end
end
