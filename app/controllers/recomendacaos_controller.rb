class RecomendacaosController < ApplicationController
  before_action :set_recomendacao, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recomendacaos = Recomendacao.all
    respond_with(@recomendacaos)
  end

  def show
    respond_with(@recomendacao)
  end

  def new
    if user_signed_in?
      @recomendacao = Recomendacao.new
      @recomendacao.user = current_user
      respond_with(@recomendacao)
    else
      redirect_to  new_user_session_path
    end  
  end

  def edit
  end

  def create
    @recomendacao = Recomendacao.new(recomendacao_params)
    @recomendacao.save
    respond_with(@recomendacao)
  end

  def update
    @recomendacao.update(recomendacao_params)
    respond_with(@recomendacao)
  end

  def destroy
    @recomendacao.destroy
    respond_with(@recomendacao)
  end

  private
    def set_recomendacao
      @recomendacao = Recomendacao.find(params[:id])
    end

    def recomendacao_params
      params.require(:recomendacao).permit(:servico, :prestador, :contato_prestador, :satisfacao, :user_id)
    end
end
