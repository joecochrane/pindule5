class LightsController < ApplicationController
  # GET /lights
  # GET /lights.json
  def index
    @lights = Light.all

    respond_to do |format|
      format.html # index.html.erb
      
    end
  end

  # GET /lights/1
  # GET /lights/1.json
  def show
    @light = Light.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      
    end
  end

  # GET /lights/new
  # GET /lights/new.json
  def new
    @light = Light.new

    respond_to do |format|
      format.html # new.html.erb
      
    end
  end

  # GET /lights/1/edit
  def edit
    @light = Light.find(params[:id])
  end

  # POST /lights
  # POST /lights.json
  def create
    @light = Light.new(params[:light])

    respond_to do |format|
      if @light.save
        format.html { redirect_to @light }
       
  #    else
  #      format.html { render action: "new" }
  #      format.json { render json: @light.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lights/1
  # PUT /lights/1.json
  def update
    @light = Light.find(params[:id])

    respond_to do |format|
      if @light.update_attributes(params[:light])
        format.html { redirect_to @light}
       
      else
        format.html { render :action => "edit" }
       format.json { render :json => @light.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lights/1
  # DELETE /lights/1.json
  def destroy
    @light = Light.find(params[:id])
    @light.destroy

    respond_to do |format|
      format.html { redirect_to lights_url }
      format.json
    end
  end
end
