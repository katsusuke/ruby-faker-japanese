# -*- coding:utf-8 -*
$:.unshift(File.dirname(__FILE__) + '/../lib') unless $:.include?(File.dirname(__FILE__) + '/../lib')
require 'rubygems'
require 'faker/japanese'

20.times {
  pref = Faker::Japanese::Address.pref
  puts "#{pref} (#{pref.yomi})"
}
