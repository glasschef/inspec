# encoding: utf-8
# author: Christoph Hartmann
# author: Dominik Richter

require 'helper'
require 'inspec/resource'

describe 'Inspec::Resources::VbScript' do

  vb_script = <<-EOH
    WScript.Echo "hello vbscript"
  EOH

  it 'check if `vbscript` for windows is properly generated ' do
    resource = MockLoader.new(:windows).load_resource('vbscript', vb_script)
    _(resource.command.to_s).must_include vb_script
  end
end
