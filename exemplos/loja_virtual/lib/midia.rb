#
class Midia
  attr_accessor :titulo, :preco, :categoria
  def initialize
    #   @titulo = titulo
    #   @preco = preco
    #   @categoria = categoria
    @desconto = 0.1
  end

  def preco_com_desconto
    @preco - (@preco * @desconto)
  end
end
