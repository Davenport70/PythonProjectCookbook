# InSpec test for recipe PythonProjectCookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe package 'python3' do
  it { should be_installed }
  its('version') { should cmp > '3.0.0*'}
end
describe pip('requirements.txt') do
  it { should be_installed }
end
