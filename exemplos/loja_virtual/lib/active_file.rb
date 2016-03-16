#
require 'FileUtil'
#
module ActiveFile
  def save
    @new_record = false

    File.open("db/revistas/#{@id}.yml", "w") do |file|
      file.puts serialize
    end
  end

  def destroy
    unless @destroyed or @new_record
      @destroyed = true

      FileUtil.rm("db/revistas/#{@id}.yml")
    end
  end

  #
  module ClassMethods
    def field(name)
      @fields ||= []
      @fields << name
    end

    def find(id)
      raise DocumentNotFound, "Documento #{id}.yml não encontrado!", caller unless File.exist?("db/revistas/#{id}.yml")
      YAML.load File.open("db/revistas/#{id}.yml", "r")
    end

    def next_id
      Dir.glob("db/revistas/*.yml").size + 1
    end

    def self.included(base)
      base.extend ClassMethods
    end

    private

    def serialize
      YAML.dump self
    end
  end
end
