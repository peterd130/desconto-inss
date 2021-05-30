class ProponentesController < ApplicationController
  def index
    @texto = ''
    if request.query_parameters['query']
      @texto = request.query_parameters['query']
      if request.query_parameters['query'].match(/[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}/)
        @proponentes = Proponente.where("cpf ~* ?", request.query_parameters['query']).order(:id)
      elsif request.query_parameters['query'].match(/[0-9]{3}[0-9]{3}[0-9]{3}[0-9]{2}/)
        @proponentes = Proponente.where("cpf ~* ?", request.query_parameters['query'].insert(3, '.').insert(7, '.').insert(11, '-') ).order(:id)
      elsif
        @proponentes = Proponente.where("nome ~* ?", request.query_parameters['query']).order(:id)
      end
    else
      @proponentes = Proponente.order(:id)
    end
  end

  def new
    @proponente = Proponente.new
  end

  def create
    @proponente = Proponente.new(proponente_params)

    if @proponente.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @proponente = Proponente.find(params[:id])
  end

  def update
    @proponente = Proponente.find(params[:id])

    if @proponente.update(proponente_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @proponente = Proponente.find(params[:id])
    @proponente.destroy

  end

  def calcular_desconto
    salario = params[:salario].gsub(".", "").to_f
    tabela = [[0, 1045, 0.075], [1045, 2089.6, 0.09], [2089.6, 3134.40, 0.12], [3134.4, 6101.06, 0.14]]

    if salario > 99
      salario = salario / 100
    end

    desconto = 0
    if salario <= 6101.06
      for faixa in tabela
        if salario <= faixa[1]
          desconto += ((salario - faixa[0]) * faixa[2]).round(2)
          break
        else
          desconto += ((faixa[1] - faixa[0]) * faixa[2]).round(2)
        end
      end
    end

    render :json => {"desconto": desconto}
  end

  private
    def proponente_params
      params.require(:proponente).permit(:nome, :cpf, :nasc, :log, :num, :bairro, :cidade, :cep, :salario, :estado, :desconto, :tel1_pes, :tel1_ref)
    end

end
