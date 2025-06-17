# _plugins/generate_blog_data_file.rb
require 'fileutils'
require 'yaml'

module Jekyll
  class BlogDataGenerator < Generator
    safe true
    priority :low

    def generate(site)
      blog_posts = site.posts.docs.select { |post| !post.data['album'] }

      blog_data = blog_posts.map do |post|
        {
          'title' => post.data['title'],
          'url' => post.url,
          'date' => post.date,
          'image' => post.data['image'],
          'caption' => post.data['caption']
        }
      end

      data_dir = File.join(site.source, '_data')
      FileUtils.mkdir_p(data_dir) unless Dir.exist?(data_dir)

      File.open(File.join(data_dir, 'blog_posts.yml'), 'w') do |file|
        file.write(blog_data.to_yaml)
      end
    end
  end
end