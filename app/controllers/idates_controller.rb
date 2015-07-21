class IdatesController < ApplicationController
  before_action :set_idate, only: [:show, :edit, :update, :destroy]

  # GET /idates
  # GET /idates.json
  def index
    @idates = Idate.all
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  # GET /idates/1
  # GET /idates/1.json
  def show
  end

  # GET /idates/new
  def new
    @idate = Idate.new
  end

  # GET /idates/1/edit
  def edit
  end

  # POST /idates
  # POST /idates.json
  def create
    @idate = current_user.idates.new(idate_params)
    @idate.user = current_user

    respond_to do |format|
      if @idate.save
        format.html { redirect_to @idate, notice: 'Idate was successfully created.' }
        format.json { render :show, status: :created, location: @idate }
      else
        format.html { render :new }
        format.json { render json: @idate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idates/1
  # PATCH/PUT /idates/1.json
  def update
    respond_to do |format|
      if @idate.update(idate_params)
        format.html { redirect_to @idate, notice: 'Idate was successfully updated.' }
        format.json { render :show, status: :ok, location: @idate }
      else
        format.html { render :edit }
        format.json { render json: @idate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idates/1
  # DELETE /idates/1.json
  def destroy
    @idate.destroy
    respond_to do |format|
      format.html { redirect_to idates_url, notice: 'Idate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idate
      @idate = Idate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idate_params
      params.require(:idate).permit(:title, :description, :start_date, :ending_date)
    end
end
