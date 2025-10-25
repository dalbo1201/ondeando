source "https://gem.coop"

gem "jekyll", "~> 4.4.0"
gem "bigdecimal"
gem "logger"

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-paginate-v2"
  gem "tzinfo"
end

# Necessária para suporte a fuso horário no Windows
platforms :mingw, :x64_mingw, :mswin do
  gem "tzinfo-data"
end
