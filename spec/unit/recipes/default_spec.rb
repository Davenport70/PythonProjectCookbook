#
# Cookbook:: PythonProjectCookbook
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'PythonProjectCookbook::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'should run apt-get update' do
      expect(chef_run).to update_apt_update 'update_sources'
    end
    it 'successfully install python3' do
      expect(chef_run).to install_package 'python3'
    end
    it 'successfully install pip' do
      expect(chef_run).to install_package 'pip'
    end
    # it 'successfully runs the requirements.txt via pip' do
    #   expect(chef_run).to
    # end
    # it 'should create a downloads directory' do
    #
    # end
    # it 'should give permissions chmod 777 to file' do
    #
    # end
  end
end
