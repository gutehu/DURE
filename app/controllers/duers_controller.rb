class DuersController < ApplicationController
  before_action :authenticate_user!

  # GET /duers
  # GET /duers.json
  def index
    @duers = Duer.where(user: current_user)
  end

  # GET /duers/1
  # GET /duers/1.json
  def show
    @duer = Duer.find(params[:id])
  end

  # GET /duers/new
  def new
    @duer = Duer.new
  end

  # GET /duers/1/edit
  def edit
    @duer = Duer.find(params[:id])
  end

  # POST /duers
  # POST /duers.json
  def create
    @duer = Duer.new(duer_params)
    @duer.user = current_user

    respond_to do |format|

          if @duer.save
             format.html { redirect_to @duer, notice: 'Duer was successfully created.' }
             format.json { render :show, status: :created, location: @duer }
      # redirect_to duer_path(@duer)
    elsif
      format.html { render :new }
      format.json { render json: @duer.errors, status: :unprocessable_entity }
      end
    end
  end



    #   if @duer.save
    #     format.html { redirect_to @duer, notice: 'Duer was successfully created.' }
    #     format.json { render :show, status: :created, location: @duer }
    #   else
    #
    #   end
    # end

  # PATCH/PUT /duers/1
  # PATCH/PUT /duers/1.json
  def update
    respond_to do |format|
      if @duer.update(duer_params)
        format.html { redirect_to @duer, notice: 'Duer was successfully updated.' }
        format.json { render :show, status: :ok, location: @duer }
      else
        format.html { render :edit }
        format.json { render json: @duer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duers/1
  # DELETE /duers/1.json
  def destroy
    @duer = Duer.find(params[:id])
    @duer.destroy
    respond_to do |format|
      format.html { redirect_to duers_url, notice: 'Duer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duer
      @duer = Duer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duer_params
      params.require(:duer).permit(:name, :activity, :address, :effective, :other)
    end
end
