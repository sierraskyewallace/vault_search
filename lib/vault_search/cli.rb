

class VaultSearch::CLI 
  def call 
    welcome
    list_vaults
    menu
    goodbye
  end
end
  def welcome 
    #fancy up 
    puts "Welcome to Vault Search!"
    puts "To see a list of vaults, type list."
    puts "To exit the program, type exit."
  end

  def list_vaults
    input = gets.strip
    if input == "list"
      @vaults = VaultSearch::Scraper.scrape
      @vaults.each_with_index(1) {|vault, i| puts "#{i}. #{vault.name}"}
      elsif input == "exit"
      goodbye 
      exit
    else
      puts "To see the list of vault again, type list. To exit the program, type exit."
      list_vaults
    end
  end
      
  
  def menu
    #fancy up
    puts "Please select the number of the vault you'd like to learn more information about or type exit to leave the program:"
    input = gets.strip 
    if input.to_i > 0 
      vault = VaultSearch::Scraper.find_by_index(input.to_i - 1)
    puts "#{vault.name} - #{vault.location} - #{vault.appearances} - #{vault.status}"
    else
    input == "exit"
    goodbye
    exit
  end
end

def goodbye 
  #fancy up 
  puts "Have a great nuclear winter! Goodbye!"
end

