#
# RMDS - Ruby Multidimensional Scaling Library
# Copyright (c) Christoph Heindl, 2010
# http://github.com/cheind/rmds
#

require './test/test_helper.rb'
require 'mds/test/bundles/bundle_metric.rb'
require 'mds/interfaces/stdlib_interface'

class TestStdlibMetric < Test::Unit::TestCase
  include MDS::Test::BundleMetric
  
  def setup
    MDS::Matrix.push_interface(MDS::StdlibInterface)
  end
  
  def teardown
    MDS::Matrix.pop_interface
  end
end
