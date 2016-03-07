require File.expand_path("lib/loja_virtual")

biblioteca = Biblioteca.new

livro_ruby = Livro.new("Sérgio Diniz", 500, 60.50, :ruby)
livro_ruby_2 = Livro.new("Bel", 500, 60.50, :ruby)
livro_java = Livro.new("Sérgio Diniz", 300, 100.50, :java, "123-123456-2")

biblioteca.adicionar(livro_ruby)
biblioteca.adicionar(livro_ruby_2)
biblioteca.adicionar(livro_java)

puts biblioteca.livros

for categoria, livros in biblioteca.livros  do
  puts categoria
  for livro in livros do
    puts livro.autor
  end
end
