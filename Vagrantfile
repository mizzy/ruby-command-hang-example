Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.provision :shell do |shell|
    shell.path = 'provision.sh'
  end
end
