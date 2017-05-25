class mcollective_process_agent(
  Boolean $manage_gem_dependencies = true,
  String $package_provider = 'puppet_gem',
) {

  mcollective::plugin { 'process':
    source =>  'puppet:///modules/mcollective_process_agent',
  }

  if ($manage_gem_dependencies) {
    package { 'sys-proctable':
      ensure   => present,
      provider => $package_provider,
    }
  }

}

