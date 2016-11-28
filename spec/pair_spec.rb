require_relative 'spec_helper'

describe Pair do

  describe '#create' do

    it 'creates a Pair entry' do
      expect{ Pair.create(pair_key: 'key value', pair_value: 'i am the first value') }.to change{ Pair.all.count }.by 1
    end
    it 'does not allow a pair with a duplicate key' do
      Pair.create(pair_key: 'key value ', pair_value: 'i am the first value')
      expect{ Pair.create(pair_key: 'key value 2', pair_value: 'i am the second value') }.to change{ Pair.all.count }.by 1
    end
  end

  describe 'return_value' do
    it 'returns a value when provided a key' do
      test_pair = Pair.create(pair_key: '1234', pair_value: '5678')
      expect(test_pair.return_value).to eq '5678'
    end
  end

end
