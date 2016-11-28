require_relative 'spec_helper'

describe MyApp do

  describe 'set route' do

    it 'is a valid route' do
      visit ('/set')
      expect(page.status_code).to eq 200
    end

  end

  describe 'get route' do
    before do
      Pair.create(pair_key: "Test_key", pair_value: "Test_value")
    end
    it 'is a valid route' do
      visit('/get')
      expect(page.status_code).to eq 200
    end
    it 'displays default content' do
      visit('/get')
      expect(page).to have_content "Nothing to return"
    end
  end

end
