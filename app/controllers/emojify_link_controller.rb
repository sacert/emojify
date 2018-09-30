class EmojifyLinkController < ApplicationController

  # GET
  def home
    @site = Website.new
  end

  # POST
  def add
    # params should be set
    @site = Website.new(site_params)
    if @site.save
      # handle it
    else
      render html: "darn"
    end
  end

  private

  def site_params
    params.require(:website).permit(:url, :blot)
  end

end
