#
class Biblioteca
  attr_accessor :livros
  def initialize
    @livros = {}
  end
  
  def adicionar(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end

  def livros_array
    @livros.values.flatten
  end
end
