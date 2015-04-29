class WorklistsController < ApplicationController
  before_action :set_worklist, only: [:show, :edit, :update, :destroy]

  # GET /worklists
  # GET /worklists.json
  def index
    @worklists = Worklist.all
  end

  # GET /worklists/1
  # GET /worklists/1.json
  def show
  end

  # GET /worklists/new
  def new
    @worklist = Worklist.new
  end

  # GET /worklists/1/edit
  def edit
  end

  # POST /worklists
  # POST /worklists.json
  def create
    @worklist = Worklist.new(worklist_params)

    respond_to do |format|
      if @worklist.save
        format.html { redirect_to @worklist, notice: 'Worklist was successfully created.' }
        format.json { render :show, status: :created, location: @worklist }
      else
        format.html { render :new }
        format.json { render json: @worklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worklists/1
  # PATCH/PUT /worklists/1.json
  def update
    respond_to do |format|
      if @worklist.update(worklist_params)
        format.html { redirect_to @worklist, notice: 'Worklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @worklist }
      else
        format.html { render :edit }
        format.json { render json: @worklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worklists/1
  # DELETE /worklists/1.json
  def destroy
    @worklist.destroy
    respond_to do |format|
      format.html { redirect_to worklists_url, notice: 'Worklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    Worklist.import(params[:file])
    redirect_to worklists_path, notice: "Worklists Added Successfully"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worklist
      @worklist = Worklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worklist_params
      params.require(:worklist).permit(:name, :nextworklist, :status)
    end
end
