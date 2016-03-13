#
class Revista
  attr_accessor :id
  @id = 0

  def self.id
    @id += 1
  end

  def initialize(titulo)
    @id = self.class.id
    @titulo = titulo
  end

  def titulo
    titulo_up = @titulo.upcase
    "Revista: #{titulo_up}"
  end
end
