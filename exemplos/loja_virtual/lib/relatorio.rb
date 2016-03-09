#
class Relatorio
  attr_accessor :biblioteca
  def initialize(biblioteca)
    @biblioteca = biblioteca
  end

  def total
    @biblioteca.livros_array.map(&:preco).inject(:+)
    # @biblioteca.livros_array.inject(0) { |total, livro| total + livro.preco }

    # total = 0.0
    # @biblioteca.livros_array.each do |livros|
    #   total += livros.preco
    # end
    # total
  end

  def titulos
    @biblioteca.livros_array.map &:titulo
    # @biblioteca.livros_array.map { |livro| livro.titulo }

    # titulos = []
    # @biblioteca.livros_array.each do |livro|
    #   titulos << livro.titulo
    # end
    # titulos
  end
end
