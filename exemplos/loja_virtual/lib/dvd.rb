#
class DVD < Midia
  # def self.formata_moeda(*variaveis_e_metodos)
  #   variaveis_e_metodos.each do |name|
  #     define_method("#{name}_formatado") do
  #       valor = respond_to?(name) ? send(name) : instance_variable_get("@#{name}")
  #       "R$ #{valor}"
  #     end
  #   end
  # end

  extend FormatarMoeda

  formata_moeda :preco_com_desconto, :preco

  def initialize(titulo, preco, categoria)
    super()
    @titulo = titulo
    @preco = preco
    @categoria = categoria
  end

  def to_s
    "Titulo: #{@titulo}, Preco: #{@preco}, Categoria: #{@categoria}"
  end
end
