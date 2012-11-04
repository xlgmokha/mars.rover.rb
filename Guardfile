# A sample Guardfile
# More info at https://github.com/guard/guard#readme
#

guard 'rspec', :cli => '--color --format nested' do
  watch(%r{^lib/(.+)\.rb$}) do |item|
    "spec/unit/#{item[1]}_spec.rb"
  end
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb') do |item|
    "spec"
  end
end

notification :tmux,
  :display_message => true,
  :timeout => 5,
  :default_message_format => '%s >> %s',
  :line_separator => ' > ',
  :color_location => 'status-left-bg'
