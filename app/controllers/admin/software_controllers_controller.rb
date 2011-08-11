class Admin::SoftwareControllersController < ApplicationController
  # GET /admin/software_controllers
  # GET /admin/software_controllers.xml
  def index
    @admin_software_controllers = Admin::SoftwareController.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_software_controllers }
    end
  end

  # GET /admin/software_controllers/1
  # GET /admin/software_controllers/1.xml
  def show
    @admin_software_controller = Admin::SoftwareController.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_software_controller }
    end
  end

  # GET /admin/software_controllers/new
  # GET /admin/software_controllers/new.xml
  def new
    @admin_software_controller = Admin::SoftwareController.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_software_controller }
    end
  end

  # GET /admin/software_controllers/1/edit
  def edit
    @admin_software_controller = Admin::SoftwareController.find(params[:id])
  end

  # POST /admin/software_controllers
  # POST /admin/software_controllers.xml
  def create
    @admin_software_controller = Admin::SoftwareController.new(params[:admin_software_controller])

    respond_to do |format|
      if @admin_software_controller.save
        format.html { redirect_to(@admin_software_controller, :notice => 'Software controller was successfully created.') }
        format.xml  { render :xml => @admin_software_controller, :status => :created, :location => @admin_software_controller }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_software_controller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/software_controllers/1
  # PUT /admin/software_controllers/1.xml
  def update
    @admin_software_controller = Admin::SoftwareController.find(params[:id])

    respond_to do |format|
      if @admin_software_controller.update_attributes(params[:admin_software_controller])
        format.html { redirect_to(@admin_software_controller, :notice => 'Software controller was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_software_controller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/software_controllers/1
  # DELETE /admin/software_controllers/1.xml
  def destroy
    @admin_software_controller = Admin::SoftwareController.find(params[:id])
    @admin_software_controller.destroy

    respond_to do |format|
      format.html { redirect_to(admin_software_controllers_url) }
      format.xml  { head :ok }
    end
  end
end
