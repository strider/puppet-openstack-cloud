#require 'puppetlabs_spec_helper/rake_tasks'
#require 'puppet-lint/tasks/puppet-lint'
#
#PuppetLint.configuration.fail_on_warnings = true
#PuppetLint.configuration.send('disable_80chars')
#PuppetLint.configuration.send('disable_class_parameter_defaults')
#PuppetLint.configuration.send('disable_class_inherits_from_params_class')
#PuppetLint.configuration.send('disable_autoloader_layout')

require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'

PuppetLint.configuration.fail_on_warnings = true
PuppetLint.configuration.send('disable_80chars')
PuppetLint.configuration.send('disable_class_parameter_defaults')
PuppetLint.configuration.send('disable_autoloader_layout')

task(:default).clear
task :default => [:spec, :lint]
