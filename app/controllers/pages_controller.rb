class PagesController < ApplicationControllernd
    before_action :set_recomendacao, only: [:show, :edit, :update, :destroy]
  
  respond_to :html
  
  def index
   @recomendacaos = Recomendacao.all
    respond_with(@recomendacaos)
  end
  
  
  def home
    @recomendacaos = Recomendacao.all
    respond_with(@recomendacaos)
  end
  
  private
    def set_recomendacao
      @recomendacao = Recomendacao.find(params[:id])
    end

    def recomendacao_params
      params.require(:recomendacao).permit(:servico, :prestador, :contato_prestador, :satisfacao, :user_id)
    end
end    