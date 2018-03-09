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

    context '::pet_count' do
      it 'is incremented after every initialization' do
        expect(PetRole::ClassMethods::pet_count).to be_an Integer
      end

      it 'is incremented after every initialization' do
        expect { PetRole::ClassMethods.send(:increment_count) }.to change {PetRole::ClassMethods::pet_count}.by 1
      end
    end
  end

  context 'PetRole::InstanceMethods' do
    let(:pet) { FactoryBot.build(described_class.to_s.downcase.to_sym) }
    context '#name' do
      it "is overwitten and returns the owner's name" do
        expect(pet.name).to be_a String
        # binding.pry
        PetRole::ClassMethods::pet_count
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
