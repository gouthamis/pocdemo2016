class XmltagsController < ApplicationController

  def create
    @xmltag = Content.new(content_params)

    respond_to do |format|
      if @xmltag.save
        format.html { redirect_to @xmltag, notice: 'XML file was successfully created.' }
        format.json { render :show, status: :created, location: @xmltag }
      else
        format.html { render :new }
        format.json { render json: @xmltag.errors, status: :unprocessable_entity }
      end
    end
  end

end
