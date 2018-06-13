class PillarsController < ApplicationController
  before_action :set_pillar, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /pillars
  # GET /pillars.json
  def index
    @pillars = current_user.pillars.all
  end

  # GET /pillars/1
  # GET /pillars/1.json
  def show
  end

  # GET /pillars/new
  def new
    @pillar = current_user.pillars.build
  end

  # GET /pillars/1/edit
  def edit
  end

  # POST /pillars
  # POST /pillars.json
  def create
    @pillar = current_user.pillars.new(pillar_params)

    respond_to do |format|
      if @pillar.save
        format.html { redirect_to @pillar, notice: 'Pillar was successfully created.' }
        format.json { render :show, status: :created, location: @pillar }
      else
        format.html { render :new }
        format.json { render json: @pillar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pillars/1
  # PATCH/PUT /pillars/1.json
  def update
    respond_to do |format|
      if @pillar.update(pillar_params)
        format.html { redirect_to @pillar, notice: 'Pillar was successfully updated.' }
        format.json { render :show, status: :ok, location: @pillar }
      else
        format.html { render :edit }
        format.json { render json: @pillar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pillars/1
  # DELETE /pillars/1.json
  def destroy
    @pillar.destroy
    respond_to do |format|
      format.html { redirect_to pillars_url, notice: 'Pillar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pillar
      @pillar = Pillar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pillar_params
      params.require(:pillar).permit(:name, :image, :time, :income, :vision, :user_id)
    end
end
