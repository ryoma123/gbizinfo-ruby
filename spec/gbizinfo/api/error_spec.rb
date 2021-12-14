require 'spec_helper'

RSpec.describe Gbizinfo::Api::Error, vcr: true do
  let(:client) { Gbizinfo::Client.new }

  describe '#from_response' do
    it 'returns a error object with message' do
      message =  'GET https://info.gbiz.go.jp/hojin/v1/hojin/'
      message << ' status_code: 400 body: {"id"=>nil, "message"=>"400 - Bad Request.", "errors"=>[]}'
      expect { client.hojin(corporate_number: '') }.to raise_error(Gbizinfo::Api::BadRequest, message)
    end
  end
end
