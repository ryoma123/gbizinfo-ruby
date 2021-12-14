require 'spec_helper'

RSpec.describe Gbizinfo::Api::Endpoints::HojinUpdateInfoCommendation, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  context 'hojin_update_info_commendation' do
    it 'success' do
      expect(client.hojin_update_info_commendation({ from: '20210101', to: '20210131' })).to be_kind_of(Hash)
    end

    it 'requires from' do
      expect { client.hojin_update_info_commendation({ to: '20210131' }) }
        .to raise_error ArgumentError, /Required arguments :from missing/
    end

    it 'requires to' do
      expect { client.hojin_update_info_commendation({ from: '20210101' }) }
        .to raise_error ArgumentError, /Required arguments :to missing/
    end
  end
end
