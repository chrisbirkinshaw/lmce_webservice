class CommandGroupsController < ApplicationController
  # GET /command_groups
  # GET /command_groups.xml
  def index
    @command_groups = CommandGroup.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @command_groups }
    end
  end

  # GET /command_groups/1
  # GET /command_groups/1.xml
  def show
    @command_group = CommandGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @command_group }
    end
  end

  # GET /command_groups/new
  # GET /command_groups/new.xml
  def new
    @command_group = CommandGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @command_group }
    end
  end

  # GET /command_groups/1/edit
  def edit
    @command_group = CommandGroup.find(params[:id])
  end

  # POST /command_groups
  # POST /command_groups.xml
  def create
    @command_group = CommandGroup.new(params[:command_group])

    respond_to do |format|
      if @command_group.save
        flash[:notice] = 'CommandGroup was successfully created.'
        format.html { redirect_to(@command_group) }
        format.xml  { render :xml => @command_group, :status => :created, :location => @command_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @command_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /command_groups/1
  # PUT /command_groups/1.xml
  def update
    @command_group = CommandGroup.find(params[:id])

    respond_to do |format|
      if @command_group.update_attributes(params[:command_group])
        flash[:notice] = 'CommandGroup was successfully updated.'
        format.html { redirect_to(@command_group) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @command_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /command_groups/1
  # DELETE /command_groups/1.xml
  def destroy
    @command_group = CommandGroup.find(params[:id])
    @command_group.destroy

    respond_to do |format|
      format.html { redirect_to(command_groups_url) }
      format.xml  { head :ok }
    end
  end
end
