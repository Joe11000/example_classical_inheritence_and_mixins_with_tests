require 'active_support/core_ext/module'

RSpec.shared_examples 'Jumper' do |args={}|
  let(:jumper) { FactoryBot.build(described_class.to_s.downcase.to_sym) }

  context '#jump' do
    it 'describes how high it can jump' do
      expect(jumper.jump).to eq "#{described_class.to_s} jumped #{jumper.jump_height} feet"
    end
  end

  context '#jump_height' do
    it 'jump_height getter' do
      expect(jumper.jump_height).to be_a Float
    end
  end
end


