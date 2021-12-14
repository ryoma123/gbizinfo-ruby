require 'spec_helper'

RSpec.describe Gbizinfo::Api::Endpoints::HojinSearch, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  context 'hojin_search' do
    it 'success' do
      expect(client.hojin_search({ corporate_number: '4000012090001' })).to be_kind_of(Hash)
    end
  end
end
