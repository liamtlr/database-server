require_relative 'spec_helper'

describe MyApp do

  describe 'set route' do
    it 'is a valid route' do
      visit ('/set')
      expect(page.status_code).to eq 200
    end
  end

end
