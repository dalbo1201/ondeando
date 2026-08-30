---
layout: paginas
title: separando foto de texto | dicas do blog
permalink: "/dicas-do-blog/separando-foto-de-texto"
---
<h2><span aria-hidden="true">|</span>separando<span class="h2-menor"> foto de texto</span> </h2>
Quando eu montei meu Fotolog eu resolvi que eu não queria que as postagens dele ficassem naparecendo junto com as postagens do blog, mas ao mesmo tempo eu queria manter apenas um feed de forma que ao assinar o rss daqui tudo estivesse junto.  

A ideia é que exista uma separação _física_ das postagens, mas no final é tudo um grande lugar onde eu posto minhas coisas.  

Aqui você terá o passo a passo de como eu fiz essa distinção ao criar as postagens em texto ou baseadas nas fotos.  

Só para lembrar, isso tudo aqui foi feito e textado para blogs criados em **Jekyll**, mas acredito que a ideia como um todo possa ser adaptada para outras plataformas.

<a href="/dicas-do-blog">&laquo; voltar para as dicas</a>
<hr>
<div class="tutorial">
<p>A primeira coisa que precisamos fazer é montar uma estrutura no <code>front metter</code> para que o filtro das postagens ocorra.</p>

<pre><code>
---
layout: foto
type: album 
title: "O título aqui"
date: data da postagem
image: caminho da imagem
caption: "legenda"
tags: ["tag1","tag2"]
permalink: "url do post"
---

</code></pre>

<p>Algumas informações desse <code>front metter</code> foram faladas no tutorial de como montar o fotolog. Aqui vamos focar apenas no <code>layout</code> que é simplesmente de onde o post vai buscar a formatação e o <code>type</code>, esse que vai servir de filtro para as páginas do blog e do fotolog.</p>

<p>Com o <code>type</code> definido como <code>album</code> temos que essa postagem em específico aparecerá apenas no fotolog e não irá aparecer no blog tradicional.</p>

<p>Para que esse filtro aconteça temos que colocar algumas condicionantes <code>Liquid</code> no arquivo <i>fotolog.html</i> presente na pasta <i>_layouts</i>.</p>

<p>De forma geral, o código de filtragem deve ser esse aqui.</p>

<pre><code>
{% raw %}{% assign all_posts = site.posts | where: "type", "album" %}
{% assign offset = paginator.page | minus: 1 | times: paginator.per_page %}
{% assign posts_to_show = all_posts | slice: offset, paginator.per_page %}

    {% for post in posts_to_show %}

        <b>Aqui entra a configuração HTML e CSS para a montagem do seu FOTOLOG</b>

    {% endfor %}{% endraw %}

</code></pre>

<p>Com isso, as postagens que aparecerão no fotolog serão apenas as que tenha no seu <code>front metter</code> a linha <code>type: album</code>.</p>

<p>Agora precisamos colocar um filtro no arquivo do blog, normalmente o <i>blog.html</i> presente na pasta <i>_layouts</i>. E aqui usaremos o seguinte filtro, também em <code>Liquid</code>.</p>

<pre><code>
{% raw %}{% assign all_posts = site.posts | where_exp: "post", "post.type != 'album'" %}
{% assign offset = paginator.page | minus: 1 | times: paginator.per_page %}
{% assign posts_to_show = all_posts | slice: offset, paginator.per_page %}

{% for post in posts_to_show %}

    <b>Aqui entra a configuração HTML e CSS para a montagem do seu BLOG</b>

{% endfor %}{% endraw %}

</code></pre>

<p>Vejam que o que acontece aqui é que se no <i>fotolog.html</i> deixamos apenas as postagens em que no <code>front metter</code> temos apenas o <code>type: album</code>, aqui nós <b>excluímos</b> essas postagens.</p>

<blockquote class="fleabag">Ainda não terminou!😁</blockquote>

<p>Para que esses filtros realmente funcionem, precisamos de dois plugins que vão criar esses filtros.</p>

<p>Primeiro vamos criar duas pastas na raiz do projeto. A primeira é a pasta <i>_plugins</i> e a outra é <i>_data</i>.</p>

<p>Na pasta <i>_plugins</i> vamos criar dois arquivos que farão os filtros das postagens. O arquivo <i>generate_album_data_file.rb</i> e o <i>generate_blog_data_file.rb</i>.</p>

<p>No arquivo <i>generate_album_data_file.rb</i> teremos o seguinte conteúdo.</p>

<pre><code>
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

</code></pre>

<p>No arquivo <i>generate_blog_data_file.rb</i> teremos o seguinte conteúdo.</p>

<pre><code>
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

</code></pre>

<p>Esses dois plugins criarão os arquivos necessários na pasta <i>_data</i> para que o filtro ocorra sem maiores problemas.</p>
</div>

Acredito que com isso seja possível você ter <b>um blog e um fotolog</b> divididos em seções diferentes do site, mas usando apenas um feed de distribuição.

Espero muito que esse _tutorial_ seja de ajuda para alguém. Eu apanhei bastante para montar na época, mesmo me parecendo um pouco poluído tem funcionado e fico feliz em poder compartilhar.  

Como eu comentei lá no alto, a gente pode [trocar uma ideia](mailto:pedro@dalbo.me?subject=Separando foto de texto "Onde falar comigo").