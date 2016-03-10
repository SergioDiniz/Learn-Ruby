require File.expand_path("lib/loja_virtual")
require 'set'
require 'yaml'

biblioteca = Biblioteca.new

livro_ruby = Livro.new("Sérgio Diniz", "Desenvolvendo em Ruby v1", 500, 60.50, :ruby)
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

dvd_gospel = DVD.new "Sucessos Gospel", 100.0, :musica
cd_gospel = CD.new "Sucessos Gospel vl.1", 40.0, :musica

puts "Livro: Preço com desconto #{livro_ruby.preco_com_desconto}, Sem desconto #{livro_ruby.preco}" 
puts "DVD: Preço com desconto #{dvd_gospel.preco_com_desconto}, Sem desconto #{dvd_gospel.preco}"
p cd_gospel
puts cd_gospel

