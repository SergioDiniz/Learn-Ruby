#
class DVD < Midia
  def initialize(titulo, preco, categoria)
    super()
    @titulo = titulo
    @preco = preco
    @categoria = categoria
  end

  def to_s
    "Titulo: #{@titulo}, Preco: #{@preco}, Categoria: #{@categoria}"
  end
end
