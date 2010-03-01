class CommandGroupCommandsController < ApplicationController
  # GET /command_group_commands
  # GET /command_group_commands.xml
  def index
    @command_group_commands = CommandGroupCommand.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @command_group_commands }
    end
  end

  # GET /command_group_commands/1
  # GET /command_group_commands/1.xml
  def show
    @command_group_command = CommandGroupCommand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @command_group_command }
    end
  end

  # GET /command_group_commands/new
  # GET /command_group_commands/new.xml
  def new
    @command_group_command = CommandGroupCommand.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @command_group_command }
    end
  end

  # GET /command_group_commands/1/edit
  def edit
    @command_group_command = CommandGroupCommand.find(params[:id])
  end

  # POST /command_group_commands
  # POST /command_group_commands.xml
  def create
    @command_group_command = CommandGroupCommand.new(params[:command_group_command])

    respond_to do |format|
      if @command_group_command.save
        flash[:notice] = 'CommandGroupCommand was successfully created.'
        format.html { redirect_to(@command_group_command) }
        format.xml  { render :xml => @command_group_command, :status => :created, :location => @command_group_command }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @command_group_command.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /command_group_commands/1
  # PUT /command_group_commands/1.xml
  def update
    @command_group_command = CommandGroupCommand.find(params[:id])

    respond_to do |format|
      if @command_group_command.update_attributes(params[:command_group_command])
        flash[:notice] = 'CommandGroupCommand was successfully updated.'
        format.html { redirect_to(@command_group_command) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @command_group_command.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /command_group_commands/1
  # DELETE /command_group_commands/1.xml
  def destroy
    @command_group_command = CommandGroupCommand.find(params[:id])
    @command_group_command.destroy

    respond_to do |format|
      format.html { redirect_to(command_group_commands_url) }
      format.xml  { head :ok }
    end
  end
end
