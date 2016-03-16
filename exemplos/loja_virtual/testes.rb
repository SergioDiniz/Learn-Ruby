require File.expand_path("lib/loja_virtual")
require 'set'
require 'yaml'

# biblioteca = Biblioteca.new

# livro_ruby = Livro.new("Sérgio Diniz", "Desenvolvendo em Ruby v1", 500, 60.50, :ruby)
# livro_ruby_2 = Livro.new("Bel", "Desenvolvendo em Ruby v2", 500, 60.50, :ruby)
# livro_java = Livro.new("Sérgio Diniz", "Desenvolvendo em Java", 300, 100.50, :java, "123-123456-2")

# biblioteca.adicionar(livro_ruby)
# biblioteca.adicionar(livro_ruby_2)
# biblioteca.adicionar(livro_java)

# puts biblioteca.livros

# for categoria, livros in biblioteca.livros  do
#   puts categoria
#   for livro in livros do
#     puts livro.autor
#   end
# end

# livros = Set.new [livro_java, livro_ruby, livro_ruby_2]

# for livro in livros do
#   puts livro
# end

# numero = [1, 2, 3, 4, 5]

# numero.each { |n| puts n * 2 }
# numero.collect { |n| puts n * 2 }

# biblioteca.filtro_por_categoria :ruby do |livro|
#   puts livro
# end

# relatorio = Relatorio.new(biblioteca)
# puts relatorio.total
# puts relatorio.titulos

# imprime_livro_no_console = lambda do
#   p "executou lambda"
# end

# imprime_livro_no_console_proc = Proc.new do
#   p "Executou proc"
# end

# biblioteca.filtro_por_categoria :ruby, &imprime_livro_no_console


# def proc_com_return
#   Proc.new {
#     return "Primeiro Retorno da Função proc"
#   }.call

#   "Segundo Retorno da Função prov"
# end

# def lambda_com_return
#   lambda {
#     return "Primeiro returno da função lambda"
#   }.call

#   "segundo retorna da função lambda"
# end

# puts proc_com_return
# puts lambda_com_return

# soma = lambda { |x, y, z| x + y + z}.curry
# somo_definida = soma.call 1, 1
# puts somo_definida.call 1

# livro_serializado = YAML.dump livro_ruby
# p livro_serializado


# desserializando_livro = YAML.load livro_serializado
# p desserializando_livro

# puts biblioteca.methods

# dvd_gospel = DVD.new "Sucessos Gospel", 100.0, :musica
# cd_gospel = CD.new "Sucessos Gospel vl.1", 40.0, :musica

# puts "Livro: Preço com desconto #{livro_ruby.preco_com_desconto}, Sem desconto #{livro_ruby.preco}"
# puts "DVD: Preço com desconto #{dvd_gospel.preco_com_desconto}, Sem desconto #{dvd_gospel.preco}"
# p cd_gospel
# puts cd_gospel

# conjunto_de_livros = VendaFacil::Set.new
# conjunto_de_livros.adicionar livro_ruby

# puts livro_ruby.preco_formatado

# dvd_gospel.extend FormatarMoeda
# puts dvd_gospel.preco_formatado

# p biblioteca.inject(0) { |total, livro| total + livro.preco }

# puts conjunto_de_livros.livros.class

# biblioteca.adicionar livro_ruby
# biblioteca.adicionar dvd_gospel
# biblioteca.adicionar cd_gospel

# puts biblioteca.midias_por_categoria :musica

# nova_revista = Revista.new "Aprenda Ruby", 90.5
# nova_revista2 = Revista.new("Aprenda java")

# puts nova_revista.id
# puts nova_revista2.id


# puts dvd_gospel.preco_formatado
# puts dvd_gospel.preco_com_desconto_formatado
# 
# nova_revista.save

# nova_revista.preco = 130.9
# nova_revista.save


# begin
#   revistas_ruby_pesquisa = Revista.find 1
#   p revistas_ruby_pesquisa
# rescue DocumentNotFound => e
#   puts e
# end

# puts "depois do find"

# puts Revista.methods

# revista = Revista.new
# puts revista.new_record
# puts revista.id
# puts revista.titulo = "Livro: Ruby On Rails"
# puts revista.preco = 100.0
# puts revista.save

# revista = Revista.new titulo: "Livro: Ruby", preco: 99.0
# p revista
# revista.save

revistas = Revista.find_by_titulo /Ruby/
puts revistas