
class VaultSearch::Scraper 
  attr_accessor :name, :status, :appearances, :location
  

  def self.scrape 
    self.scrape_vaults
  end
  
  def self.scrape_vaults
    vaults = [] 
    vaults << self.scrape_site
    vaults
  end

  def self.scrape_site
    doc = Nokogiri::HTML(URI.open("https://fallout.gamepedia.com/List_of_known_Vaults"))
    vaults = self.new 
    @vaults = [] 
    vaults.name = doc.css("td")[0].text.strip
    vaults.location = doc.css("td")[3].text.strip
    vaults.status = doc.css("td")[2].text.strip
    vaults.appearances = doc.css("td")[4].text.strip
    @vaults << {:name => name, :location => location, :status => status, :appearances => appearances}
  end
  puts @vaults
end