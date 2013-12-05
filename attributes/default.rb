#
# Cookbook Name:: jetty
# Attributes:: default
#
# Copyright 2010, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

default[:java][:install_flavor] = 'oracle'
default[:java][:jdk_version] = '7'
default[:java][:oracle] = { 'accept_oracle_download_terms' => true }
  
default["jetty"]["host"] = "0.0.0.0"
default["jetty"]["port"] = 8080
default["jetty"]["no_start"] = 0
default["jetty"]["jetty_args"] = ""
default["jetty"]["java_options"] = "-Xmx256m -Djava.awt.headless=true"
default["jetty"]["version"] = "9.1.0.v20131115"
default["jetty"]["md5"] = "61f9ec3124cd4fab78092fd98b1bb70b"
#default["jetty"]["cargo"]["username"] = "cargo"
#default["jetty"]["cargo"]["jetty"]["source"]["url"] = "http://repo1.maven.org/maven2/org/codehaus/cargo/cargo-jetty-6-and-earlier-deployer/1.2.2/cargo-jetty-6-and-earlier-deployer-1.2.2.war"
#default["jetty"]["cargo"]["jetty"]["source"]["checksum"] = "34ea6285c48c31e579aee69ba138cf94015070aacafc1a993f37a9e6534fe064"


set["jetty"]["user"] = "jetty"
set["jetty"]["group"] = "jetty"
set["jetty"]["home"] = "/usr/share/jetty"
set["jetty"]["install_dir"] = "/usr/jetty"
set["jetty"]["config_dir"] = "/etc/jetty"
set["jetty"]["log_dir"] = "/var/log/jetty"
set["jetty"]["tmp_dir"] = "/var/cache/jetty/data"
set["jetty"]["context_dir"] = "/srv/jetty/contexts"
set["jetty"]["webapp_dir"] = "/srv/jetty/webapps"

