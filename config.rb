page "CNAME", layout: false

configure :development do
  activate :livereload
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  set :relative_links, true
end
