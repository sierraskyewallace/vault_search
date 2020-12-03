class VaultSearch::Vault
  attr_accessor :name, :location, :status, :appearances

  @@all = []

  def initialize(name, location, status, appearances)
    @name = name
    @location = location
    @status = status
    @appearances = appearances
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_index(index)
    @@all[index]
  end
end