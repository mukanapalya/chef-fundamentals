# setup file for utilities
package 'git'
package 'vim-enhanced'

# ~/setup.rb

package 'tree' do
  action :install
end

package 'nano' do
  action :install
end

package 'ntp'

node['ipaddress']
node['memory']['total']

apple_count = 4
puts "I have #{apple_count} apples"

file '/etc/motd' do
  content "This server is the property of DRYiCE
  hostname: #{node['hostname']}
  ipadress: #{node['ipaddress']}
  cpu: #{node['cpu']['0']['mhz']}
  memory: #{node['memory']['total']}
"
  action :create
  owner 'root'
  group 'root'
end
