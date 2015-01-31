require 'spec_helper'
describe 'webhookd' do

  context 'with defaults for all parameters' do
    it { should contain_class('webhookd') }
  end
end
