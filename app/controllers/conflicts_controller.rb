class ConflictsController < ApplicationController
  # GET /conflicts
  # GET /conflicts.json
  def index
    @conflicts = Conflict.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conflicts }
    end
  end

  # GET /conflicts/1
  # GET /conflicts/1.json
  def show
    @conflict = Conflict.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conflict }
    end
  end

  # GET /conflicts/new
  # GET /conflicts/new.json
  def new
    @conflict = Conflict.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conflict }
    end
  end

  # GET /conflicts/1/edit
  def edit
    @conflict = Conflict.find(params[:id])
  end

  # POST /conflicts
  # POST /conflicts.json
  def create
    @conflict = Conflict.new(params[:conflict])

    respond_to do |format|
      if @conflict.save
        format.html { redirect_to @conflict, notice: 'Conflict was successfully created.' }
        format.json { render json: @conflict, status: :created, location: @conflict }
      else
        format.html { render action: "new" }
        format.json { render json: @conflict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conflicts/1
  # PUT /conflicts/1.json
  def update
    @conflict = Conflict.find(params[:id])

    respond_to do |format|
      if @conflict.update_attributes(params[:conflict])
        format.html { redirect_to @conflict, notice: 'Conflict was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conflict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conflicts/1
  # DELETE /conflicts/1.json
  def destroy
    @conflict = Conflict.find(params[:id])
    @conflict.destroy

    respond_to do |format|
      format.html { redirect_to conflicts_url }
      format.json { head :no_content }
    end
  end
end
