class BancoDeArquivo
  require 'YAML'

  def salvar(livro)
    File.open("livros.yml", "a") do |arquivo|
      arquivo.puts YAML.dump livro
      arquivo.puts ""
    end
  end

  def carrega
    $/ = "\n\n"
    File.open("livros.yml", "r").map do |livro|
      YAML.load livro
    end
  end
end
