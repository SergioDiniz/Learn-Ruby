# encoding: utf-8

#
class Livro
  attr_accessor :preco, :categoria, :autor
  def initialize(autor, numero_paginas, preco, categoria, isbn = "1")
    @autor = autor
    @numero_paginas = numero_paginas
    @preco = preco
    @categoria = categoria
    @isbn = isbn
  end

  def to_s
    "Autor: #{@autor}, Numero de Paginas: #{@numero_paginas}, Preço: #{@preco}, Categoria: #{@categoria}, ISBN: #{@isbn}"
  end
end
