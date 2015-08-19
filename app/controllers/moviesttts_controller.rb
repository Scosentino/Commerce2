class MoviestttsController < ApplicationController
  before_action :set_moviesttt, only: [:show, :edit, :update, :destroy]

  # GET /moviesttts
  # GET /moviesttts.json
  def index
    @moviesttts = Moviesttt.all
  end

  # GET /moviesttts/1
  # GET /moviesttts/1.json
  def show
  end

  # GET /moviesttts/new
  def new
    @moviesttt = Moviesttt.new
  end

  # GET /moviesttts/1/edit
  def edit
  end

  # POST /moviesttts
  # POST /moviesttts.json
  def create
    @moviesttt = Moviesttt.new(moviesttt_params)

    respond_to do |format|
      if @moviesttt.save
        format.html { redirect_to @moviesttt, notice: 'Moviesttt was successfully created.' }
        format.json { render :show, status: :created, location: @moviesttt }
      else
        format.html { render :new }
        format.json { render json: @moviesttt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moviesttts/1
  # PATCH/PUT /moviesttts/1.json
  def update
    respond_to do |format|
      if @moviesttt.update(moviesttt_params)
        format.html { redirect_to @moviesttt, notice: 'Moviesttt was successfully updated.' }
        format.json { render :show, status: :ok, location: @moviesttt }
      else
        format.html { render :edit }
        format.json { render json: @moviesttt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moviesttts/1
  # DELETE /moviesttts/1.json
  def destroy
    @moviesttt.destroy
    respond_to do |format|
      format.html { redirect_to moviesttts_url, notice: 'Moviesttt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moviesttt
      @moviesttt = Moviesttt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moviesttt_params
      params.require(:moviesttt).permit(:name, :description, :price, :active)
    end
end
