#
class CD < Midia
  def initialize(titulo, preco, categoria)
    @titulo = titulo
    @preco = preco
    @categoria = categoria
  end

  def to_s
  	%Q{Titulo: #{@titulo}, Preço: #{@preco}, Categoria: #{@categoria}}
  end
end
