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

  def filtro_por_categoria(categoria)
    @livros[categoria].each do |livro|
      yield livro if block_given?
    end
  end
end
