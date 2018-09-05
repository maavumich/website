# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end
activate :directory_indexes
activate :gh_pages do |gh_pages|
  gh_pages.remote = 'git@github.com:maavumich/maavumich.github.io.git'
  gh_pages.branch = 'master'
end
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :haml, format: :html5
page 'index', layout: 'layout'
page 'about', layout: 'layout'
page 'join/index', layout: false
set :css_dir, 'stylesheets'
set :images_dir, 'images'

activate :minify_css
activate :relative_assets
