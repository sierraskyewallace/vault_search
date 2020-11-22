class VaultSearch::CLI 
  def call 
    welcome
    vaults
    menu
    goodbye
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
      @concerts = VaultSearch::Vault 
      @vaults.each_with_index(1) do |vault, i|
        puts "#{i}. #{vault.name} - #{vault.location} - #{vault.appearances} - #{vault.status}"
      end
    end
  end
  
  def menu
    
end

def goodbye 
end

end
