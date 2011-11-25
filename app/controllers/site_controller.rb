class SiteController < ApplicationController
  def index
  end

  def isbn
    if request.post?
      @isbn = params[:isbn]
      if IsbnValidator.new.validate(@isbn)
        flash[:notice] = "#{@isbn} is a valid ISBN!"
        redirect_to isbn_validator_path
      else
        flash[:error] = "#{@isbn} does not look like a valid ISBN!"
        render :isbn
      end
    end
  end
end
