require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  # Method solved 3 different ways below

  # SOLUTION 1
    contacts.each do |key, value|
        if key == "Freddy Mercury"
            value.each do |key2, value2|
                if key2 == :favorite_ice_cream_flavors
                  value2.delete_if {|flavor| flavor == "strawberry"}
                end
            end
        end
    end


  # SOLUTION 2
  # contacts["Freddy Mercury"].each do |key, value|
  #   if key == :favorite_ice_cream_flavors && value.include?("strawberry")
  #     value.delete_if do |flavor|
  #       flavor == "strawberry"
  #     end
  #   end
  # end


  # SOLUTION 3
  # contacts["Freddy Mercury"][:favorite_ice_cream_flavors].shift
  
  contacts
end


