class WorkPatternsController < ApplicationController
  # GET /work_patterns
  # GET /work_patterns.xml
  def index
    @work_patterns = WorkPattern.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @work_patterns }
    end
  end

  # GET /work_patterns/1
  # GET /work_patterns/1.xml
  def show
    @work_pattern = WorkPattern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @work_pattern }
    end
  end

  # GET /work_patterns/new
  # GET /work_patterns/new.xml
  def new
    @work_pattern = WorkPattern.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @work_pattern }
    end
  end

  # GET /work_patterns/1/edit
  def edit
    @work_pattern = WorkPattern.find(params[:id])
  end

  # POST /work_patterns
  # POST /work_patterns.xml
  def create
    @work_pattern = WorkPattern.new(params[:work_pattern])

    respond_to do |format|
      if @work_pattern.save
        flash[:notice] = 'WorkPattern was successfully created.'
        format.html { redirect_to(@work_pattern) }
        format.xml  { render :xml => @work_pattern, :status => :created, :location => @work_pattern }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @work_pattern.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /work_patterns/1
  # PUT /work_patterns/1.xml
  def update
    @work_pattern = WorkPattern.find(params[:id])

    respond_to do |format|
      if @work_pattern.update_attributes(params[:work_pattern])
        flash[:notice] = 'WorkPattern was successfully updated.'
        format.html { redirect_to(@work_pattern) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @work_pattern.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /work_patterns/1
  # DELETE /work_patterns/1.xml
  def destroy
    @work_pattern = WorkPattern.find(params[:id])
    @work_pattern.destroy

    respond_to do |format|
      format.html { redirect_to(work_patterns_url) }
      format.xml  { head :ok }
    end
  end
end
