class DeviceGroupsController < ApplicationController
  # GET /device_groups
  # GET /device_groups.xml
  def index
    @device_groups = DeviceGroup.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @device_groups }
    end
  end

  # GET /device_groups/1
  # GET /device_groups/1.xml
  def show
    @device_group = DeviceGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @device_group }
    end
  end

  # GET /device_groups/new
  # GET /device_groups/new.xml
  def new
    @device_group = DeviceGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @device_group }
    end
  end

  # GET /device_groups/1/edit
  def edit
    @device_group = DeviceGroup.find(params[:id])
  end

  # POST /device_groups
  # POST /device_groups.xml
  def create
    @device_group = DeviceGroup.new(params[:device_group])

    respond_to do |format|
      if @device_group.save
        flash[:notice] = 'DeviceGroup was successfully created.'
        format.html { redirect_to(@device_group) }
        format.xml  { render :xml => @device_group, :status => :created, :location => @device_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @device_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /device_groups/1
  # PUT /device_groups/1.xml
  def update
    @device_group = DeviceGroup.find(params[:id])

    respond_to do |format|
      if @device_group.update_attributes(params[:device_group])
        flash[:notice] = 'DeviceGroup was successfully updated.'
        format.html { redirect_to(@device_group) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @device_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /device_groups/1
  # DELETE /device_groups/1.xml
  def destroy
    @device_group = DeviceGroup.find(params[:id])
    @device_group.destroy

    respond_to do |format|
      format.html { redirect_to(device_groups_url) }
      format.xml  { head :ok }
    end
  end
end
