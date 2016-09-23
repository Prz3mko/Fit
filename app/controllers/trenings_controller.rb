class TreningsController < ApplicationController
  before_action :set_trening, only: [:show, :edit, :update, :destroy]

  # GET /trenings
  # GET /trenings.json
  def index
    @trenings = Trening.all
  end

  # GET /trenings/1
  # GET /trenings/1.json
  def show
  end

  # GET /trenings/new
  def new
    @trening = Trening.new
  end

  # GET /trenings/1/edit
  def edit
  end

  # POST /trenings
  # POST /trenings.json
  def create
    @trening = Trening.new(trening_params)
    @trening.user_id = current_user.id
    
    respond_to do |format|
      if @trening.save
        format.html { redirect_to @trening, notice: 'Trening was successfully created.' }
        format.json { render :show, status: :created, location: @trening }
      else
        format.html { render :new }
        format.json { render json: @trening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trenings/1
  # PATCH/PUT /trenings/1.json
  def update
    respond_to do |format|
      if @trening.update(trening_params)
        format.html { redirect_to @trening, notice: 'Trening was successfully updated.' }
        format.json { render :show, status: :ok, location: @trening }
      else
        format.html { render :edit }
        format.json { render json: @trening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trenings/1
  # DELETE /trenings/1.json
  def destroy
    @trening.destroy
    respond_to do |format|
      format.html { redirect_to trenings_url, notice: 'Trening was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trening
      @trening = Trening.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trening_params
      params.require(:trening).permit(:date, :exercise, :description ,:user_id)
    end
end
