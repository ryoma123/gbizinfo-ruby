require 'spec_helper'

RSpec.describe Gbizinfo::Api::Endpoints::HojinProcurement, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  context 'hojin_procurement' do
    it 'success' do
      expect(client.hojin_procurement(corporate_number: '4000012090001')).to be_kind_of(Hash)
    end
  end
end
