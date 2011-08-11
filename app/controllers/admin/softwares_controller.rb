class Admin::SoftwaresController < Admin::AdminController

  
  # GET /admin/softwares
  # GET /admin/softwares.xml
  def index
    @admin_softwares = Admin::Software.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_softwares }
    end
  end

  # GET /admin/softwares/1
  # GET /admin/softwares/1.xml
  def show
    @admin_software = Admin::Software.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_software }
    end
  end

  # GET /admin/softwares/new
  # GET /admin/softwares/new.xml
  def new
    @admin_software = Admin::Software.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_software }
    end
  end

  # GET /admin/softwares/1/edit
  def edit
    @admin_software = Admin::Software.find(params[:id])
  end

  # POST /admin/softwares
  # POST /admin/softwares.xml
  def create
    @admin_software = Admin::Software.new(params[:admin_software])

    respond_to do |format|
      if @admin_software.save
        format.html { redirect_to(@admin_software, :notice => 'Software was successfully created.') }
        format.xml  { render :xml => @admin_software, :status => :created, :location => @admin_software }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/softwares/1
  # PUT /admin/softwares/1.xml
  def update
    @admin_software = Admin::Software.find(params[:id])

    respond_to do |format|
      if @admin_software.update_attributes(params[:software])
        format.html { redirect_to( :action => :index, :notice => 'Software was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/softwares/1
  # DELETE /admin/softwares/1.xml
  def destroy
    @admin_software = Admin::Software.find(params[:id])
    @admin_software.destroy

    respond_to do |format|
      format.html { redirect_to(admin_softwares_url) }
      format.xml  { head :ok }
    end
  end
end
