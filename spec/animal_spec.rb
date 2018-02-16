require_relative 'animal_spec'
require_relative '../lib/human'
require 'pry'


RSpec.shared_examples 'Animal' do
  let(:animal) { FactoryBot.build(described_class.to_s.downcase.to_sym) }

  context '#name' do
    it 'has a name' do
      expect(animal.name).to be_a String
    end
  end
end
