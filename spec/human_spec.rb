require_relative 'jumper_spec'
require_relative 'animal_spec'
# require_relative 'pet_role_spec'
require_relative '../lib/human'
require 'active_support/core_ext/object/instance_variables'
require 'pry'

RSpec.describe Human do
  context 'factory' do
    let(:human) { FactoryBot.build(:human) }

    context 'is valid if' do
      it 'has the correct instance_variables when initialized' do
        human_instance_values = human.instance_values
        expect(human_instance_values['jump_height']).to be_within(1.5).of(1.5)
        expect(human_instance_values['name']).to be_a String

        expect(human.methods.include? :jump).to eq true
      end
    end
  end

  context 'object is valid if' do
    it_behaves_like 'Jumper'
    it_behaves_like 'Animal'

  end

end



