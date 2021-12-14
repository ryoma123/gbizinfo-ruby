require 'spec_helper'

RSpec.describe Gbizinfo::Api::Endpoints::HojinUpdateInfoPatent, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  context 'hojin_update_info_patent' do
    it 'success' do
      expect(client.hojin_update_info_patent({ from: '20210801', to: '20210831' })).to be_kind_of(Hash)
    end

    it 'requires from' do
      expect { client.hojin_update_info_patent({ to: '20210131' }) }
        .to raise_error ArgumentError, /Required arguments :from missing/
    end

    it 'requires to' do
      expect { client.hojin_update_info_patent({ from: '20210101' }) }
        .to raise_error ArgumentError, /Required arguments :to missing/
    end
  end
end
