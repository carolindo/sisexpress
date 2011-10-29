class ManutencoesController < ApplicationController
  # GET /manutencoes
  # GET /manutencoes.xml
  def index
    @manutencoes = Manutencao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @manutencoes }
    end
  end

  # GET /manutencoes/1
  # GET /manutencoes/1.xml
  def show
    @manutencao = Manutencao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @manutencao }
    end
  end

  # GET /manutencoes/new
  # GET /manutencoes/new.xml
  def new
    @manutencao = Manutencao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @manutencao }
    end
  end

  # GET /manutencoes/1/edit
  def edit
    @manutencao = Manutencao.find(params[:id])
  end

  # POST /manutencoes
  # POST /manutencoes.xml
  def create
    @manutencao = Manutencao.new(params[:manutencao])

    respond_to do |format|
      if @manutencao.save
        format.html { redirect_to(@manutencao, :notice => 'Manutencao was successfully created.') }
        format.xml  { render :xml => @manutencao, :status => :created, :location => @manutencao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @manutencao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /manutencoes/1
  # PUT /manutencoes/1.xml
  def update
    @manutencao = Manutencao.find(params[:id])

    respond_to do |format|
      if @manutencao.update_attributes(params[:manutencao])
        format.html { redirect_to(@manutencao, :notice => 'Manutencao was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @manutencao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /manutencoes/1
  # DELETE /manutencoes/1.xml
  def destroy
    @manutencao = Manutencao.find(params[:id])
    @manutencao.destroy

    respond_to do |format|
      format.html { redirect_to(manutencoes_url) }
      format.xml  { head :ok }
    end
  end
end
