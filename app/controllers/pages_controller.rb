class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(pages_params)

    if @page.save
      redirect_to pages_url
    else
      redirect_to pages_url
    end
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(pages_params)
      redirect_to pages_url
    else
      redirect_to update_page_url
    end
  end

  # TODO
  def delete
  end

  private

  def pages_params
    params.require(:page).permit(:name, :url)
  end
end
