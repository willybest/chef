require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  #it 'does something' do
  #  skip 'Replace this with meaningful tests'
  #end
  describe package ('tree') do
     it { should be_installed }
  end
  describe file ('/etc/sudoers') do
     it { should be_file }
  end
  describe file('/etc/httpd/conf/httpd.conf') do
     its(:content) { should match /ServerName www.example.jp/ }
  end
end
