module VendaFacil
  #
  class Set
    attr_accessor :livros
    def initialize
      @banco_de_arquivo = BancoDeArquivo.new
    end

    def adicionar(livro)
      salva livro do
        livros << livro
      end
    end

    def livros_array
      @livros.values.flatten
    end

    def filtro_por_categoria(categoria)
      @livros.select { |livro| livro.categoria == categoria }
    end

    def livros
      @livros ||= @banco_de_arquivo.carrega
    end

    private

    def salva(livro)
      @banco_de_arquivo.salvar livro
      yield
    end
  end
end
