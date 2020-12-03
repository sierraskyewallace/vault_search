
class VaultSearch::Scraper 
  attr_accessor :designation, :status, :appearances, :location

  def self.scrape_site
    doc = Nokogiri::HTML(URI.open("https://fallout.gamepedia.com/List_of_known_Vaults"))
    vault = self.new 

    vault.designation = doc.css("td")[0].text.strip
    vault.location = doc.css("td")[3].text.strip
    vault.status = doc.css("td")[2].text.strip
    vault.appearances = doc.css("td")[4].text.strip
    vault
  end

end