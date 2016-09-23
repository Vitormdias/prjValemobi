class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
    @produto = Produto.new
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def new
    @produto = Produto.new
  end

  def edit
    @produto = Produto.find(params[:id])


    redirect_to update
  end

  def create
    @produto = Produto.new(produto_params)
    @produto.preco.to_f
    @produto.qtd.to_i

    if @produto.save
      redirect_to :root
    else
      redirect_to :back
    end
  end

  def update
    @produto = Produto.find(params[:id])
    if @produto.update(produto_params)
      redirect_to :root
    else
      redirect_to :back
    end
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    redirect_to produtos_path
  end

  private
    def produto_params
      params.require(:produto).permit(:nome,:preco,:qtd,:tipo)
    end
end
