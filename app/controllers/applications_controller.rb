class ApplicationsController < ApplicationController
  before_action :signed_in_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_application, only: [:index, :show, :edit, :update, :destroy]

  # GET /applications
  def index
    @applications = Application.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # GET /applications/new
  def new
    @application = Application.new
  end

  # GET /applications/1/edit
  def edit
  end

  # POST /application
  # POST /application.json
  def create
    @application = Application.new(application_params)

    respond_to do |format|
      if @application.save
        ApplicationMailer.application_confirmation(@application).deliver
        format.html { redirect_to '/main/index', notice: 'Application was successfully updated.' }
        format.json { render action: 'show', status: :created, location: @application }
      else
        format.html { render action: 'new' }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application/1
  # PATCH/PUT /application/1.json
  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to '/main/index', notice: 'Application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application/1
  # DELETE /application/1.json
  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:name, :email, :phone, :age, :video, :results, :training)
    end
end
