class ServiceLengthsController < ApplicationController
  # GET /service_lengths
  # GET /service_lengths.xml
  def index
    @service_lengths = ServiceLength.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_lengths }
    end
  end

  # GET /service_lengths/1
  # GET /service_lengths/1.xml
  def show
    @service_length = ServiceLength.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_length }
    end
  end

  # GET /service_lengths/new
  # GET /service_lengths/new.xml
  def new
    @service_length = ServiceLength.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_length }
    end
  end

  # GET /service_lengths/1/edit
  def edit
    @service_length = ServiceLength.find(params[:id])
  end

  # POST /service_lengths
  # POST /service_lengths.xml
  def create
    @service_length = ServiceLength.new(params[:service_length])

    respond_to do |format|
      if @service_length.save
        flash[:notice] = 'ServiceLength was successfully created.'
        format.html { redirect_to(@service_length) }
        format.xml  { render :xml => @service_length, :status => :created, :location => @service_length }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_length.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_lengths/1
  # PUT /service_lengths/1.xml
  def update
    @service_length = ServiceLength.find(params[:id])

    respond_to do |format|
      if @service_length.update_attributes(params[:service_length])
        flash[:notice] = 'ServiceLength was successfully updated.'
        format.html { redirect_to(@service_length) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_length.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_lengths/1
  # DELETE /service_lengths/1.xml
  def destroy
    @service_length = ServiceLength.find(params[:id])
    @service_length.destroy

    respond_to do |format|
      format.html { redirect_to(service_lengths_url) }
      format.xml  { head :ok }
    end
  end
end
