class VulnerabilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vulnerability, only: [:checker, :show, :destroy]

  def checker
    ValCheckerJob.perform_later(@vulnerability)
    redirect_to @vulnerability.url
  end

  def index
    @vulnerabilities = Vulnerability.all
  end

  def show
  end

  def new
    @vulnerability = Vulnerability.new
  end

  def create
    @vulnerability = Vulnerability.new(vulnerability_params)

    if @vulnerability.save
      redirect_to @vulnerability, notice: 'Vulnerability was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @vulnerability.destroy
    redirect_to vulnerabilities_url, notice: 'Vulnerability was successfully destroyed.'
  end

  private

  def set_vulnerability
    @vulnerability = Vulnerability.find(params[:id])
  end

  def vulnerability_params
    params.require(:vulnerability).permit(:title, :rubygem, :date)
  end
end
