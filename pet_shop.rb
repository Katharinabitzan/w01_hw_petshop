def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_pets)
  pet_shop[:admin][:pets_sold] += number_of_pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed_name)
  pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_name
      pets.push("found")
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, name)
result = nil
  pet_shop[:pets].each do |pet|
    if pet[:name].include? name
      result = pet
      break
    end
  end
  return result
end

##Bad code
# def remove_pet_by_name(pet_shop, name)
# for pet in pet_shop[:pets]
#     if pet[:name] == name
#       pet[:name].delete!(name)
#     end
#   end
# end

def remove_pet_by_name(pet_shop, name)
for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if name == pet[:name]
    end
  return nil
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  def stock_count(pet_shop)
    return pet_shop[:pets].count
  end
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, amount)
customer[:cash] -= amount
return customer[:cash]
end

def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer[:cash] >= pet[:price]
    customer[:pets].push(pet_shop[:pets])
    pet_shop[:admin][:pets_sold] += 1
    customer[:cash] -= pet[:price]
    pet_shop[:admin][:total_cash] += pet[:price]
  end

end

#KBitzan W1Weekend HW
