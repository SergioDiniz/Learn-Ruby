#
class Revista
  attr_accessor :titulo, :preco, :id
  # @id = 0

  # def self.id
  #   @id += 1
  # end

  def initialize(titulo, preco)
    # @id = self.class.id
    @titulo = titulo
    @preco = preco
    @id = self.class.next_id
  end

  # def titulo
  #   titulo_up = @titulo.upcase
  #   "Revista: #{titulo_up}"
  # end

  def save
    File.open("db/revistas/#{@id}.yml", "w") do |file|
      file.puts serialize
    end
  end

  def self.find(id)
    raise DocumentNotFound, "Documento #{id}.yml não encontrado!", caller unless File.exist?("db/revistas/#{id}.yml")
    YAML.load File.open("db/revistas/#{id}.yml", "r")
  end

  private

  def serialize
    YAML.dump self
  end

  def self.next_id
    Dir.glob("db/revistas/*.yml").size + 1
  end
end
