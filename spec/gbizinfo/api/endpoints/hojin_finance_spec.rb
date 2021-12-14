require 'spec_helper'

RSpec.describe Gbizinfo::Api::Endpoints::HojinFinance, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  context 'hojin_finance' do
    it 'success' do
      expect(client.hojin_finance(corporate_number: '4000012090001')).to be_kind_of(Hash)
    end
  end
end
