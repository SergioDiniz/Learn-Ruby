# encoding: utf-8

#
class Livro < Midia
  include FormatarMoeda
  attr_accessor :autor, :numero_paginas, :isbn
  def initialize(autor, titulo, numero_paginas, preco, categoria, isbn = "1")
    super()
    @autor = autor
    @titulo = titulo
    @numero_paginas = numero_paginas
    @preco = preco
    @categoria = categoria
    @isbn = isbn
  end

  def to_s
    "Autor: #{@autor}, Titulo: #{@titulo}, Numero de Paginas: #{@numero_paginas}, Preço: #{@preco}, Categoria: #{@categoria}, ISBN: #{@isbn}"
  end

  def eql?(other)
    @isbn == other.isbn
  end

  def hash
    @isbn.hash
  end

end
