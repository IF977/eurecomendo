class ContratantesController < ApplicationController
  before_action :set_contratante, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @contratantes = Contratante.all
    respond_with(@contratantes)
  end

  def show
    respond_with(@contratante)
  end

  def new
    if user_signed_in?
      @contratante = Contratante.new
      @contratante.user = current_user
      respond_with(@contratante)
    else
     redirect_to  new_user_session_path
    end  
     
  end

  def edit
    if user_signed_in?
      @contratante = Contratante.find(params[:id])
      @contratante.user = current_user
      respond_with(@contratante)
    else
     redirect_to  new_user_session_path
    end 
  end

  def create
    @contratante = Contratante.new(contratante_params)
    @contratante.save
    respond_with(@contratante)
  end

  def update
    @contratante.update(contratante_params)
    respond_with(@contratante)
  end

  def destroy
    @contratante.destroy
    respond_with(@contratante)
  end

  private
    def set_contratante
      @contratante = Contratante.find(params[:id])
    end

    def contratante_params
      params.require(:contratante).permit(:nome, :endereco, :email, :contato, :user_id)
    end
end
