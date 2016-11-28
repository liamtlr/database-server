require_relative 'spec_helper'

describe Pair do

  describe '#create_pair' do

    it 'creates a Pair entry' do
      key = 'Key value'
      value = 'I am the value'
      expect{ Pair.create(pair_key: key, pair_value: value) }.to change{ Pair.all.count }.by 1
    end
  end

end
