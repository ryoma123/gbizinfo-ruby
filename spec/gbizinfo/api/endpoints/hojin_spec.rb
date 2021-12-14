require 'spec_helper'

RSpec.describe Gbizinfo::Api::Endpoints::Hojin, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  context 'hojin' do
    it 'success' do
      expect(client.hojin(corporate_number: '4000012090001')).to be_kind_of(Hash)
    end
  end
end
