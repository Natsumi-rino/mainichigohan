class HowmaniesController < ApplicationController
  before_action :set_howmany, only: [:show, :edit, :update, :destroy]

  # GET /howmanies
  # GET /howmanies.json
  def index
    @howmanies = Howmany.all
  end

  # GET /howmanies/1
  # GET /howmanies/1.json
  def show
  end

  # GET /howmanies/new
  def new
    @howmany = Howmany.new
  end

  # GET /howmanies/1/edit
  def edit
  end

  # POST /howmanies
  # POST /howmanies.json
  def create
    @howmany = Howmany.new(howmany_params)

    respond_to do |format|
      if @howmany.save
        format.html { redirect_to @howmany, notice: 'Howmany was successfully created.' }
        format.json { render :show, status: :created, location: @howmany }
      else
        format.html { render :new }
        format.json { render json: @howmany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /howmanies/1
  # PATCH/PUT /howmanies/1.json
  def update
    respond_to do |format|
      if @howmany.update(howmany_params)
        format.html { redirect_to @howmany, notice: 'Howmany was successfully updated.' }
        format.json { render :show, status: :ok, location: @howmany }
      else
        format.html { render :edit }
        format.json { render json: @howmany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howmanies/1
  # DELETE /howmanies/1.json
  def destroy
    @howmany.destroy
    respond_to do |format|
      format.html { redirect_to howmanies_url, notice: 'Howmany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_howmany
      @howmany = Howmany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def howmany_params
      params.require(:howmany).permit(:name)
    end
end
