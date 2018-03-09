module PetOwnerRole
  def initialize args=({ pets: [] })
    @pets = args[:pets] # [[PetRole1, likes_to_be_touched?], [PetRole2, likes_to_be_touched?]]
  end


  def pets?
    @pets.size > 0
  end


  # def introduce_pets
  #   @pet.petable ? "Yes, you can pet #{@pet.name}." ? "No, you can not pet #{@pet.name}."
  #   case @pets
  #   when false
  #     then "I don't own a pet"
  #   else
  #     @pets =
  #     "My pet's name is '#{@dog.name}'"
  #   end
  # end
end
