require_relative '../lib/dog'
require_relative 'animal_spec'
require_relative 'jumper_spec'
require_relative 'pet_role_spec'


RSpec.describe Dog do
  context 'factory' do
    it 'is valid if ' do
      expect(FactoryBot.build(:dog))
    end
  end

  context 'instance' do
    it_behaves_like 'Animal'
    it_behaves_like 'Jumper'
    it_behaves_like 'PetRole'
  end
end
