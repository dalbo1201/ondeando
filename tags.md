---
layout: blog-pages
title: "Tags"
permalink: /blog/tags/
---
<h1><span aria-hidden="true">|</span><span class="h1-menor">meu</span>Blog<span class="h1-menor"> Ondeando</span> </h1>
<h2 class="blog-title">Por aqui falei sobre:</h2>

<ul class="lista-tags">
  {% assign tags = site.tags | sort %}
  {% for tag in tags %}
    <li>
      <h3 id="{{ tag[0] | slugify }}">#{{ tag[0] }}</h3>
      <table class="tabela-posts">
        {% for post in tag[1] %}
          <tr class="linha-post">
            <td class="data-tag">{{ post.date | date: "%d/%m/%Y" }}</td>
            <td class="titulo-post"><a href="{{ post.url | relative_url }}" class="linkum">{{ post.title }}</a></td>
          </tr>
        {% endfor %}
      </table>
    </li>
  {% endfor %}
</ul>