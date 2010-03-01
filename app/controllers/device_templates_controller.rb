class DeviceTemplatesController < ApplicationController
  # GET /device_templates
  # GET /device_templates.xml
  def index
    @device_templates = DeviceTemplate.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @device_templates }
    end
  end

  # GET /device_templates/1
  # GET /device_templates/1.xml
  def show
    @device_template = DeviceTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @device_template }
    end
  end

  # GET /device_templates/new
  # GET /device_templates/new.xml
  def new
    @device_template = DeviceTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @device_template }
    end
  end

  # GET /device_templates/1/edit
  def edit
    @device_template = DeviceTemplate.find(params[:id])
  end

  # POST /device_templates
  # POST /device_templates.xml
  def create
    @device_template = DeviceTemplate.new(params[:device_template])

    respond_to do |format|
      if @device_template.save
        flash[:notice] = 'DeviceTemplate was successfully created.'
        format.html { redirect_to(@device_template) }
        format.xml  { render :xml => @device_template, :status => :created, :location => @device_template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @device_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /device_templates/1
  # PUT /device_templates/1.xml
  def update
    @device_template = DeviceTemplate.find(params[:id])

    respond_to do |format|
      if @device_template.update_attributes(params[:device_template])
        flash[:notice] = 'DeviceTemplate was successfully updated.'
        format.html { redirect_to(@device_template) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @device_template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /device_templates/1
  # DELETE /device_templates/1.xml
  def destroy
    @device_template = DeviceTemplate.find(params[:id])
    @device_template.destroy

    respond_to do |format|
      format.html { redirect_to(device_templates_url) }
      format.xml  { head :ok }
    end
  end
end
