require 'pry'

RSpec.shared_examples 'PetRole' do

  context 'PetRole::ClassMethods' do
    # context '#owner' do
    #   context 'pet has an owner' do
    #     it 'prints that the animal has an owner and who it is' do
    #       binding.pry


    #     end
    #   end

    #   context "pet does not have an owner" do
    #     it 'prints that the animal has no owner'
    #   end
    # end

    context '::pets_in_the_world' do
      it 'is 0 by default and changes to 1 when' do
        binding.pry
        expect(described_class.pet_count).to eq 0
        expect { FactoryBot.build(described_class.to_s.downcase.to_sym) }.to change {described_class.pet_count}.from(0).to(1)
        expect { described_class.increment_count}.to change {described_class.pet_count}.from(1).to(2)
      end
    end
  end

  context 'PetRole::InstanceMethods' do
    let(:pet) { FactoryBot.build(described_class.to_s.downcase.to_sym) }
    context '#name' do
      it "is overwitten and returns the owner's name" do
        expect(pet.name).to be_a String
      end
    end

    context '#likes_to_be_touched?' do
      context 'if yes' do
        let(:petable_pet) { FactoryBot.build(described_class.to_s.downcase.to_sym, { likes_to_be_touched: true }) }

        it 'return true' do
          expect(petable_pet.likes_to_be_touched?).to eq true
        end
      end

      context 'if no' do
        let(:petable_pet) { FactoryBot.build(described_class.to_s.downcase.to_sym, { likes_to_be_touched: false }) }

        it 'return false' do
          expect(petable_pet.likes_to_be_touched?).to eq false
        end
      end
    end
  end
end



# when to use an interface? 3 Different options of has-a 1) innerclass 2)  composition where you are passed in an object as a param, 3) interfacing it
