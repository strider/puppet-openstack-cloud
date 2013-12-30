#
# Copyright (C) 2013 eNovance SAS <licensing@enovance.com>
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.
#
# == Class: privatecloud::cache
#
# Install a cache server (used by OpenStack services)
#
# === Parameters:
#
# [*listen_ip*]
#   (optional) IP address on which memcached instance should listen
#   Default to $::ipaddress_eth0
#

class privatecloud::cache (
  $listen_ip = $::ipaddress_eth0,
){

  class { 'memcached':
    listen_ip  => $listen_ip,
    max_memory => '60%',
  }

}
