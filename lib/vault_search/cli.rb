require 'colorize'
class VaultSearch::CLI

  def call
    welcome
    list_vaults
    menu
    goodbye
  end
  def welcome 
    puts "****************************************************************************".light_blue
    puts "Welcome to Vault Search!".green
    puts "Please select which vault form the Fallout franchise you'd like to learn about  or type exit to leave:".green
    puts "****************************************************************************".light_blue
  end
  
  def list_vaults
    @vaults = VaultSearch::Scraper.scrape_vaults
    @vaults.each.with_index(1) do |vault, i|
      puts "#{i}. #{vault.name}"
    end
  end

  def menu
      input = nil
    while input != "exit"
      puts " Please type the number of the vault you'd like more information about,".green 
      puts "type list to see the list again or type exit to leave:".green
      input = gets.strip.downcase
      if input.to_i > 0
        the_vault = @vaults[input.to_i - 1]
        puts "Name:".light_blue
        puts "#{the_vault.name}"
        puts "Description:".light_blue
        puts "#{the_vault.description}"
        puts "Status:".light_blue
        puts "#{the_vault.status}"
        puts "Location:".light_blue
        puts "#{the_vault.location}"
        puts "Appearances:".light_blue
        puts " #{the_vault.appearances}"
        
      elsif input == "list"
        list_vaults
    
      end
    end
  end
  

  def goodbye
    puts "Have a great nuclear winter!".green
  end
end

