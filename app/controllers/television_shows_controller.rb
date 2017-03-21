class TelevisionShowsController < ApplicationController
  before_action :set_television_show, only: [:show, :edit, :update, :destroy]

  # GET /television_shows
  # GET /television_shows.json
  def index
    @television_shows = TelevisionShow.all
  end

  # GET /television_shows/1
  # GET /television_shows/1.json
  def show
  end

  # GET /television_shows/new
  def new
    @television_show = TelevisionShow.new
  end

  # GET /television_shows/1/edit
  def edit
  end

  # POST /television_shows
  # POST /television_shows.json
  def create
    @television_show = TelevisionShow.new(television_show_params)

    respond_to do |format|
      if @television_show.save
        format.html { redirect_to @television_show, notice: 'Television show was successfully created.' }
        format.json { render :show, status: :created, location: @television_show }
      else
        format.html { render :new }
        format.json { render json: @television_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /television_shows/1
  # PATCH/PUT /television_shows/1.json
  def update
    respond_to do |format|
      if @television_show.update(television_show_params)
        format.html { redirect_to @television_show, notice: 'Television show was successfully updated.' }
        format.json { render :show, status: :ok, location: @television_show }
      else
        format.html { render :edit }
        format.json { render json: @television_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /television_shows/1
  # DELETE /television_shows/1.json
  def destroy
    @television_show.destroy
    respond_to do |format|
      format.html { redirect_to television_shows_url, notice: 'Television show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_television_show
      @television_show = TelevisionShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def television_show_params
      params.require(:television_show).permit(:name, :details)
    end
end
