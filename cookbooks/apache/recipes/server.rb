#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
end

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#  variables(
#  :name => 'DRYiCE'
#  ) 
#end

bash "inline script" do
  user "root"
  code "mkdir -p /var/www/mysites/ && chown -R apache /var/www/mysites/"
  not_if do
    File.directory?('/var/www/mysites/')
  end
end


service 'httpd' do
  action [:enable,:start ]
end
