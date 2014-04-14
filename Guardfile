# # Guardfile
notification :growl

# Reload the app (but not the browser) on changes to ruby files
# guard :shotgun, server: 'thin', port: 3001 do
#   watch %r{^(lib|models)/.*\.rb}
#   watch 'config.ru'
#   watch 'gadgenie.rb'
# end

# guard 'puma', :port => 3001 do
#   watch('Gemfile.lock')
#   watch %r{^(lib|models)/.*\.rb}
#   watch %r{^articles/.*\.md}
#   watch 'config.ru'
#   watch 'dasmith.rb'
# end

# Restart the rack server when a ruby file is changed.
guard 'rack', :port => 3001 do
  watch('Gemfile.lock')
  watch %r{^(lib|models)/.*\.rb}
  watch 'config.ru'
  watch 'myapp.rb'
end

# Restart the bundles if I change the Gemfile
guard :bundler do
  watch('Gemfile')
end

# Rebuild the css when any SASS files are changed.
guard :sass, input: 'scss', output: 'public/css', style: 'expanded', all_on_start: true

# Concatinate JS using Jammit (could use for CSS too).
guard :jammit,
  :config_path => "assets.yml",
  :output_folder => "./public",
  :package_on_start => true do
    watch %r{javascripts/.+\.js$}
    watch 'public/css/main.css'
    watch 'assets.yml'
end

# Reload the browser on changes to CSS, ERB or HTML.
guard :livereload do
  watch %r{views/.+\.(erb|haml)$}
  watch %r{public/.+\.(css|js|html)}
  watch %r{scss/.+\.(css|scss|sass)}
end

# Run Unit Tests
guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
  watch('Gemfile.lock')
  watch %r{^(lib|models)/.*\.rb}
  watch 'config.ru'
  watch 'myapp.rb'
end

# guard :migrate do
#   watch(%r{^db/migrate/(\d+).+\.rb})
#   watch('db/seeds.rb')
# end

