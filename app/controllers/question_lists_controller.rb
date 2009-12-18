class QuestionListsController < ApplicationController
  # GET /question_lists
  # GET /question_lists.xml
  def index
    @question_lists = QuestionList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_lists }
    end
  end

  # GET /question_lists/1
  # GET /question_lists/1.xml
  def show
    @question_list = QuestionList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_list }
    end
  end

  # GET /question_lists/new
  # GET /question_lists/new.xml
  def new
    @question_list = QuestionList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_list }
    end
  end

  # GET /question_lists/1/edit
  def edit
    @question_list = QuestionList.find(params[:id])
  end

  # POST /question_lists
  # POST /question_lists.xml
  def create
    @question_list = QuestionList.new(params[:question_list])

    respond_to do |format|
      if @question_list.save
        flash[:notice] = 'QuestionList was successfully created.'
        format.html { redirect_to(@question_list) }
        format.xml  { render :xml => @question_list, :status => :created, :location => @question_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_lists/1
  # PUT /question_lists/1.xml
  def update
    @question_list = QuestionList.find(params[:id])

    respond_to do |format|
      if @question_list.update_attributes(params[:question_list])
        flash[:notice] = 'QuestionList was successfully updated.'
        format.html { redirect_to(@question_list) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_lists/1
  # DELETE /question_lists/1.xml
  def destroy
    @question_list = QuestionList.find(params[:id])
    @question_list.destroy

    respond_to do |format|
      format.html { redirect_to(question_lists_url) }
      format.xml  { head :ok }
    end
  end
end
