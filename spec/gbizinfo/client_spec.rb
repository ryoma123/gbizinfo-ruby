require 'spec_helper'

RSpec.describe Gbizinfo::Client do
  before do
    Gbizinfo::Config.reset
  end

  context 'defaults' do
    let(:client) { described_class.new }

    describe '#initialize' do
      Gbizinfo::Config::ATTRIBUTES.each do |key|
        it "sets #{key}" do
          expect(client.send(key)).to eq Gbizinfo::Config.send(key)
        end
      end
    end
  end

  context 'custom' do
    describe '#initialize' do
      Gbizinfo::Config::ATTRIBUTES.each do |key|
        context key.to_s do
          let(:client) { described_class.new(key => 'custom') }

          it "sets #{key}" do
            expect(client.send(key)).not_to eq Gbizinfo::Config.send(key)
            expect(client.send(key)).to eq 'custom'
          end
        end
      end
    end
  end

  context 'config' do
    after do
      described_class.config.reset
    end

    let(:client) { described_class.new }

    context 'user-agent' do
      before do
        described_class.configure do |config|
          config.user_agent = 'custom'
        end
      end

      describe '#initialize' do
        it 'sets user-agent' do
          expect(client.user_agent).to eq 'custom'
        end
        it 'creates a connection' do
          expect(client.send(:connection).headers).to eq(
            'Accept' => 'application/json',
            'User-Agent' => 'custom'
          )
        end
      end
    end

    context 'endpoint' do
      before do
        Gbizinfo.configure do |config|
          config.endpoint = 'default'
        end
      end

      it 'defaults endpoint' do
        client = described_class.new
        expect(client.endpoint).to eq 'default'
      end
      context 'with config' do
        before do
          described_class.configure do |config|
            config.endpoint = 'custom'
          end
        end

        it 'overrides endpoint to config' do
          client = described_class.new
          expect(client.endpoint).to eq 'custom'
        end
        it 'overrides endpoint to specific endpoint' do
          client = described_class.new(endpoint: 'local')
          expect(client.endpoint).to eq 'local'
        end
      end
    end

    context 'token' do
      before do
        Gbizinfo.configure do |config|
          config.token = 'default'
        end
      end

      it 'defaults token' do
        client = described_class.new
        expect(client.token).to eq 'default'
      end
      context 'with config' do
        before do
          described_class.configure do |config|
            config.token = 'custom'
          end
        end

        it 'overrides token to config' do
          client = described_class.new
          expect(client.token).to eq 'custom'
        end
        it 'overrides token to specific token' do
          client = described_class.new(token: 'local')
          expect(client.token).to eq 'local'
        end
      end
    end

    context 'adapter' do
      let(:adapter) { Faraday.default_adapter }
      let(:adapter_class) { Faraday::Adapter::NetHttp }

      around do |example|
        previous_adapter = Faraday.default_adapter
        Faraday.default_adapter = :net_http
        example.run
        Faraday.default_adapter = previous_adapter
      end

      context 'default adapter' do
        describe '#initialize' do
          it 'sets adapter' do
            expect(client.adapter).to eq adapter
          end
          it 'creates a connection' do
            expect(client.send(:connection).adapter).to eq adapter_class
          end
        end
      end
    end
  end
end
