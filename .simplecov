SimpleCov.start 'rails' do
  add_group "Policies", "app/policies"

  add_filter "app/channels/"
  add_filter "app/jobs/"
  add_filter "bin/"
  add_filter "config/"
  add_filter "db/"
  add_filter "spec/"
end