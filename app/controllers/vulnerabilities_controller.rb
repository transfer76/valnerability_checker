class VulnerabilitiesController < ApplicationController
  before_action :set_vulnerability, only: [:show, :edit, :update, :destroy]

  def index
    @vulnerabilities = Vulnerability.all
  end

  def show
  end

  def new
    @vulnerability = Vulnerability.new
  end

  def edit
  end

  def create
    @vulnerability = Vulnerability.new(vulnerability_params)

    if @vulnerability.save
      redirect_to @vulnerability, notice: 'Vulnerability was successfully created.'
    else
      render :new
    end
  end

  def update
    if @vulnerability.update(vulnerability_params)
      redirect_to @vulnerability, notice: 'Vulnerability was successfully updated.'
    else
      render :edit
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
    params.fetch(:vulnerability, {})
  end
end
