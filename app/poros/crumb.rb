class Crumb

  attr_reader :name, :path

  def initialize(name, path)
    @name = name
    @path = path
  end

  def has_link?
    @path.present?
  end
end