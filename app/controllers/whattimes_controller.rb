class WhattimesController < ApplicationController
  before_action :set_whattime, only: [:show, :edit, :update, :destroy]

  # GET /whattimes
  # GET /whattimes.json
  def index
    @whattimes = Whattime.all
  end

  # GET /whattimes/1
  # GET /whattimes/1.json
  def show
  end

  # GET /whattimes/new
  def new
    @whattime = Whattime.new
  end

  # GET /whattimes/1/edit
  def edit
  end

  # POST /whattimes
  # POST /whattimes.json
  def create
    @whattime = Whattime.new(whattime_params)

    respond_to do |format|
      if @whattime.save
        format.html { redirect_to @whattime, notice: 'Whattime was successfully created.' }
        format.json { render :show, status: :created, location: @whattime }
      else
        format.html { render :new }
        format.json { render json: @whattime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whattimes/1
  # PATCH/PUT /whattimes/1.json
  def update
    respond_to do |format|
      if @whattime.update(whattime_params)
        format.html { redirect_to @whattime, notice: 'Whattime was successfully updated.' }
        format.json { render :show, status: :ok, location: @whattime }
      else
        format.html { render :edit }
        format.json { render json: @whattime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whattimes/1
  # DELETE /whattimes/1.json
  def destroy
    @whattime.destroy
    respond_to do |format|
      format.html { redirect_to whattimes_url, notice: 'Whattime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whattime
      @whattime = Whattime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whattime_params
      params.require(:whattime).permit(:name)
    end
end
