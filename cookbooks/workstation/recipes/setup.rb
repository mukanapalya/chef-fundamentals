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

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'DRYiCE')
  action :create
end
