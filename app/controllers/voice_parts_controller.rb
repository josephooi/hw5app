class VoicePartsController < ApplicationController
  # GET /voice_parts
  # GET /voice_parts.json
  def index
    @voice_parts = VoicePart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voice_parts }
    end
  end

  # GET /voice_parts/1
  # GET /voice_parts/1.json
  def show
    @voice_part = VoicePart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voice_part }
    end
  end

  # GET /voice_parts/new
  # GET /voice_parts/new.json
  def new
    @voice_part = VoicePart.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voice_part }
    end
  end

  # GET /voice_parts/1/edit
  def edit
    @voice_part = VoicePart.find(params[:id])
  end

  # POST /voice_parts
  # POST /voice_parts.json
  def create
    @voice_part = VoicePart.new(params[:voice_part])

    respond_to do |format|
      if @voice_part.save
        format.html { redirect_to @voice_part, notice: 'Voice part was successfully created.' }
        format.json { render json: @voice_part, status: :created, location: @voice_part }
      else
        format.html { render action: "new" }
        format.json { render json: @voice_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voice_parts/1
  # PUT /voice_parts/1.json
  def update
    @voice_part = VoicePart.find(params[:id])

    respond_to do |format|
      if @voice_part.update_attributes(params[:voice_part])
        format.html { redirect_to @voice_part, notice: 'Voice part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voice_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_parts/1
  # DELETE /voice_parts/1.json
  def destroy
    @voice_part = VoicePart.find(params[:id])
    @voice_part.destroy

    respond_to do |format|
      format.html { redirect_to voice_parts_url }
      format.json { head :no_content }
    end
  end
end
