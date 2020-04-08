#
# Cookbook:: PythonProjectCookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# turn this into cookbooks!!!
# apt-get update
#
# sudo apt-get upgrade -y do
# end
#
# # install python
# sudo apt-get install python3 -y do
# end
# sudo apt-get install python3-pip -y do
# end
# sudo pip3 install -r /home/ubuntu/Project/It_Jobs_Watch_Data_Package-master/requirements.txt do
# end
apt_update 'update_sources' do
  action :update
end

include_recipe 'poise-python'




pip_requirements '/Users/zackdavenport/Downloads/It_Jobs_Watch_Data_Package-master/requirements.txt'
