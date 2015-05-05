class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show, :edit, :update, :destroy]

  # GET /universities
  # GET /universities.json
  def index
    @universities = University.all
  end

  # GET /universities/1
  # GET /universities/1.json
  def show
  end

  # GET /universities/new
  def new
    @university = University.new
    @university.university_profiles.build
  end

  # GET /universities/1/edit
  def edit
  end

  # POST /universities
  # POST /universities.json
  def create
    @university = University.new(university_params)

    respond_to do |format|
      if @university.save
        format.html { redirect_to @university, notice: 'University was successfully created.' }
        format.json { render :show, status: :created, location: @university }
      else
        format.html { render :new }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universities/1
  # PATCH/PUT /universities/1.json
  def update
    respond_to do |format|
      if @university.update(university_params)
        format.html { redirect_to @university, notice: 'University was successfully updated.' }
        format.json { render :show, status: :ok, location: @university }
      else
        format.html { render :edit }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universities/1
  # DELETE /universities/1.json
  def destroy
    @university.destroy
    respond_to do |format|
      format.html { redirect_to universities_url, notice: 'University was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
      @university_profiles = @university.university_profiles.paginate(:page => params[:page], :per_page => 10)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_params
      params.require(:university).permit(
        :univ_name,
        university_profile_attributes:
          [
            :id, :classification, :description, :owner, :total_area_hectare, :total_area_meter, :acquisition, :titling_status, :date_issued, :tax_dec_no, :remarks, :titling_step_ein , :titling_step_zwei, :titling_step_drei, :titling_step_vier, :titling_step_funf, :titling_step_sechs, :titling_step_sieben, :titling_step_acht, :titling_step_neun, :titling_step_zehn, :_destroy
          ]
        )
    end
end

