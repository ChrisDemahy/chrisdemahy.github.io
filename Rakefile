Bundler.require(:default, :development, :test)

desc 'Watch the directory and rebuild when neccesary'
task :dev do
    system('jekyll serve -I')
end

desc 'Build the App'
task :build do
    system('bundle exec jekyll build --verbose --profile --trace')
end

desc 'Test the App'
task :test do
    system('bundle exec jekyll doctor')
    system(
        'bundle exec htmlproofer ./_site --only-4xx --check-html --assume-extension --check-opengraph --check-favicon'
    )
    system(
        'bundle exec rspec --require spec_helper --color --warning --format documentation'
    )
end

desc 'Clean up the App'
task :clean do
    system('bundle exec jekyll clean')
end

desc 'Run the rspec tests'
task :rspec do
    system(
        'bundle exec rspec --require spec_helper --color --warning --format documentation'
    )
end
