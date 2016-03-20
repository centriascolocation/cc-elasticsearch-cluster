Vagrant.configure("2") do |config|

  config.vm.define "es-node-1" do |ubuntu|
    ubuntu.vm.box      = "mayflower/trusty64-puppet3"
    ubuntu.vm.hostname = "cc-esc-01"
    ubuntu.vm.network    "private_network", ip: "172.31.20.11"

    ubuntu.vm.provision "puppet-bootstrap", type: "puppet" do |puppet|
      puppet.module_path   = "modules"
      puppet.manifest_file = 'bootstrap.pp'
    end

    ubuntu.vm.provision "puppet", type: "puppet" do |puppet|
      puppet.module_path       = "modules"
      puppet.manifest_file     = "site.pp"
      puppet.hiera_config_path = "hiera.yaml"
    end

    ubuntu.vm.provision :shell, :inline => "echo $'\360\237\215\273'"
  end

  config.vm.define "es-node-2" do |ubuntu|
    ubuntu.vm.box      = "mayflower/trusty64-puppet3"
    ubuntu.vm.hostname = "cc-esc-02"
    ubuntu.vm.network    "private_network", ip: "172.31.20.12"

    ubuntu.vm.provision "puppet-bootstrap", type: "puppet" do |puppet|
      puppet.module_path    = "modules"
      puppet.manifest_file  = 'bootstrap.pp'
    end

    ubuntu.vm.provision "puppet", type: "puppet" do |puppet|
      puppet.module_path       = "modules"
      puppet.manifest_file     = "site.pp"
      puppet.hiera_config_path = "hiera.yaml"
    end

    ubuntu.vm.provision :shell, :inline => "echo $'\360\237\215\273'"
  end

  config.vm.define "es-node-3" do |ubuntu|
    ubuntu.vm.box      = "mayflower/trusty64-puppet3"
    ubuntu.vm.hostname = "cc-esc-03"
    ubuntu.vm.network    "private_network", ip: "172.31.20.13"

    ubuntu.vm.provision "puppet-bootstrap", type: "puppet" do |puppet|
      puppet.module_path    = "modules"
      puppet.manifest_file  = 'bootstrap.pp'
    end

    ubuntu.vm.provision "puppet", type: "puppet" do |puppet|
      puppet.module_path       = "modules"
      puppet.manifest_file     = "site.pp"
      puppet.hiera_config_path = "hiera.yaml"
    end

    ubuntu.vm.provision :shell, :inline => "echo $'\360\237\215\273'"
  end


end
