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

file '/etc/motd' do
  content 'This server is the property of DRYiCE'
  action :create
  owner 'root'
  group 'root'
end
