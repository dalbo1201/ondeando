# _plugins/generate_album_data_file.rb
require 'fileutils'
require 'yaml'
module Jekyll
  class SetAlbumPermalink < Generator
    safe true
    priority :low

    def generate(site)
      puts "[SetAlbumPermalink] Plugin carregado!"

      site.posts.docs.each do |post|
        if post.data['type'] == 'album' && !post.data['permalink']
          slug = post.data['slug'] || Jekyll::Utils.slugify(post.data['title'])
          post.data['permalink'] = "/fotolog/#{slug}/"
          puts "[SetAlbumPermalink] Atribuindo permalink: #{post.data['permalink']}"
        end
      end
    end
  end
end
