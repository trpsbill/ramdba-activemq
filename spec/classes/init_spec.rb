require 'spec_helper'

describe 'activemq' do
  context 'with defaults for all parameters' do
    it { should contain_class('activemq') }
    it { should compile.with_all_deps }

    it { should contain_package('activemq') }
    it { should contain_service('activemq') }

    it do
      should contain_file('activemq.xml').with(
        'path' => '/opt/activemq/conf/activemq.xml',
        'owner' => 'activemq',
        'group' => 'activemq',
        'mode' => '0600',
      )
    end

    it do
      should contain_file('/etc/init.d/activemq').with(
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0600',
      )
    end

    it do
      should contain_file('/etc/default/activemq').with(
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0600',
      )
    end

    it do
      should contain_file('/opt/activemq/conf/log4j.properties').with(
        'owner' => 'activemq',
        'group' => 'activemq',
        'mode' => '0600',
      )
    end

  end
end
