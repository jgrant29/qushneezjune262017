class EmailSignUpsController < ApplicationController
  before_action :set_email_sign_up, only: [:show, :edit, :update, :destroy]

  # GET /email_sign_ups
  # GET /email_sign_ups.json
  def index
    @email_sign_ups = EmailSignUp.all
  end

  # GET /email_sign_ups/1
  # GET /email_sign_ups/1.json
  def show
  end

  # GET /email_sign_ups/new
  def new
    @email_sign_up = EmailSignUp.new
  end

  # GET /email_sign_ups/1/edit
  def edit
  end

  # POST /email_sign_ups
  # POST /email_sign_ups.json
  def create
    @email_sign_up = EmailSignUp.new(email_sign_up_params)

    respond_to do |format|
      if @email_sign_up.save
        format.html { redirect_to @email_sign_up, notice: 'Email sign up was successfully created.' }
        format.json { render :show, status: :created, location: @email_sign_up }
      else
        format.html { render :new }
        format.json { render json: @email_sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_sign_ups/1
  # PATCH/PUT /email_sign_ups/1.json
  def update
    respond_to do |format|
      if @email_sign_up.update(email_sign_up_params)
        format.html { redirect_to @email_sign_up, notice: 'Email sign up was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_sign_up }
      else
        format.html { render :edit }
        format.json { render json: @email_sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_sign_ups/1
  # DELETE /email_sign_ups/1.json
  def destroy
    @email_sign_up.destroy
    respond_to do |format|
      format.html { redirect_to email_sign_ups_url, notice: 'Email sign up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_sign_up
      @email_sign_up = EmailSignUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_sign_up_params
      params.require(:email_sign_up).permit(:email, :notification)
    end
end
