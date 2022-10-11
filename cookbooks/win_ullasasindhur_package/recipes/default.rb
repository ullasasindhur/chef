#
# Cookbook:: win_ullasasindhur_package
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
include_recipe 'win_ullasasindhur_package::prereq'
include_recipe 'win_ullasasindhur_package::install'
include_recipe 'win_ullasasindhur_package::cleanup'
