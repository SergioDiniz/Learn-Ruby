#
class Biblioteca
  include Enumerable
  attr_accessor :livros
  def initialize
    # @livros = {}
    # @livros = []
    @banco_de_arquivo = BancoDeArquivo.new
  end

  # def adicionar(livro)
  #   @livros[livro.categoria] ||= []
  #   @livros[livro.categoria] << livro
  #   @banco_de_arquivo.salvar(livro)
  # end

  # def adicionar(livro)
  #   salva livro do
  #     livros << livro
  #   end
  # end

  def livros_array
    @livros.values.flatten
  end

  # def filtro_por_categoria(categoria)
  #   @livros.select { |livro| livro.categoria == categoria }
  # end

  # def livros
  #   @livros ||= @banco_de_arquivo.carrega
  # end

  # def adicionar(midia)
  #   salva midia do
  #     midias << midia
  #   end if midia.kind_of? Midia
  # end

  # def midias_por_categoria(categoria)
  #   midias.select { |midia| midia.categoria == categoria }
  # end

  def adicionar(midia)
    salva midia do
      midias << midia
    end
  end

  def midias_por_categoria(categoria)
    midias.select do |midia|
      midia.categoria == categoria if midia.respond_to? :categoria
    end
  end

  def midias
    @midias ||= @banco_de_arquivo.carrega
  end

  def each
    midias.each { |livro| yield livro }
  end

  private

  def salva(midia)
    @banco_de_arquivo.salvar midia
    yield
  end
end
