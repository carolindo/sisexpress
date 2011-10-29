class ProdutividadesController < ApplicationController
  # GET /produtividades
  # GET /produtividades.xml
  def index
    @produtividades = Produtividade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @produtividades }
    end
  end

  # GET /produtividades/1
  # GET /produtividades/1.xml
  def show
    @produtividade = Produtividade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produtividade }
    end
  end

  # GET /produtividades/new
  # GET /produtividades/new.xml
  def new
    @produtividade = Produtividade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produtividade }
    end
  end

  # GET /produtividades/1/edit
  def edit
    @produtividade = Produtividade.find(params[:id])
  end

  # POST /produtividades
  # POST /produtividades.xml
  def create
    @produtividade = Produtividade.new(params[:produtividade])

    respond_to do |format|
      if @produtividade.save
        format.html { redirect_to(@produtividade, :notice => 'Produtividade was successfully created.') }
        format.xml  { render :xml => @produtividade, :status => :created, :location => @produtividade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @produtividade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /produtividades/1
  # PUT /produtividades/1.xml
  def update
    @produtividade = Produtividade.find(params[:id])

    respond_to do |format|
      if @produtividade.update_attributes(params[:produtividade])
        format.html { redirect_to(@produtividade, :notice => 'Produtividade was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produtividade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /produtividades/1
  # DELETE /produtividades/1.xml
  def destroy
    @produtividade = Produtividade.find(params[:id])
    @produtividade.destroy

    respond_to do |format|
      format.html { redirect_to(produtividades_url) }
      format.xml  { head :ok }
    end
  end
end
