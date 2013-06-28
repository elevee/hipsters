class HipstersController < ApplicationController
  # GET /hipsters
  # GET /hipsters.json
  def index
    @hipsters = Hipster.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hipsters }
    end
  end

  # GET /hipsters/1
  # GET /hipsters/1.json
  def show
    @hipster = Hipster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hipster }
    end
  end

  # GET /hipsters/new
  # GET /hipsters/new.json
  def new
    @hipster = Hipster.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hipster }
    end
  end

  # GET /hipsters/1/edit
  def edit
    @hipster = Hipster.find(params[:id])
  end

  # POST /hipsters
  # POST /hipsters.json
  def create
    @hipster = Hipster.new(params[:hipster])

    respond_to do |format|
      if @hipster.save
        format.html { redirect_to @hipster, notice: 'Hipster was successfully created.' }
        format.json { render json: @hipster, status: :created, location: @hipster }
      else
        format.html { render action: "new" }
        format.json { render json: @hipster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hipsters/1
  # PUT /hipsters/1.json
  def update
    @hipster = Hipster.find(params[:id])

    respond_to do |format|
      if @hipster.update_attributes(params[:hipster])
        format.html { redirect_to @hipster, notice: 'Hipster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hipster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hipsters/1
  # DELETE /hipsters/1.json
  def destroy
    @hipster = Hipster.find(params[:id])
    @hipster.destroy

    respond_to do |format|
      format.html { redirect_to hipsters_url }
      format.json { head :no_content }
    end
  end
end
