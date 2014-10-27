class BaristaController < ApplicationController
  before_action :set_baristum, only: [:show, :edit, :update, :destroy]

  # GET /barista
  # GET /barista.json
  def index
    @barista = Baristum.all
  end

  # GET /barista/1
  # GET /barista/1.json
  def show
  end

  # GET /barista/new
  def new
    @baristum = Baristum.new
  end

  # GET /barista/1/edit
  def edit
  end

  # POST /barista
  # POST /barista.json
  def create
    @baristum = Baristum.new(baristum_params)

    respond_to do |format|
      if @baristum.save
        # format.html { redirect_to @baristum, notice: 'Baristum was successfully created.' }
        # format.json { render :show, status: :created, location: @baristum }
        format.html { redirect_to root_path, notice: 'Baristum was successfully created.' }
      else
        # format.html { render :new }
        # format.json { render json: @baristum.errors, status: :unprocessable_entity }
        format.html { redirect_to root_path, alert: @buyer.error }
      end
    end
  end

  # PATCH/PUT /barista/1
  # PATCH/PUT /barista/1.json
  def update
    respond_to do |format|
      if @baristum.update(baristum_params)
        format.html { redirect_to @baristum, notice: 'Baristum was successfully updated.' }
        format.json { render :show, status: :ok, location: @baristum }
      else
        format.html { render :edit }
        format.json { render json: @baristum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barista/1
  # DELETE /barista/1.json
  def destroy
    @baristum.destroy
    respond_to do |format|
      format.html { redirect_to barista_url, notice: 'Baristum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baristum
      @baristum = Baristum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baristum_params
      params.require(:baristum).permit(:name, :gender, :age, :company, :job_title, :company_address, :city, :postal_code, :country, :telp, :fax, :mobile, :email, :website)
    end
end
