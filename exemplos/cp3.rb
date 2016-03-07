$nome = "Linguagem Ruby"
$isbn = "123-456789-2"
$numero_paginas = 254
$preco = 60.50
$desconto = 0.1

def preco_com_desconto(preco, desconto)
  preco - (preco * desconto)
end


class Livro
  def initialize(autor, numero_paginas, isbn = "1")
    puts ("Autor: #{autor}, Paginas: #{numero_paginas}, ISBN: #{isbn}")
  end
end

ruby =  Livro.new("Sergio Diniz", 500)
design = Livro.new("Sergio Diniz", 300, "123-45679-3")
