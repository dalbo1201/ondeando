---
layout: blog-pages
title: Album
---
<h1><span aria-hidden="true">|</span><span class="h1-menor">meu </span>Álbum<span class="h1-menor"> de fotos</span></h1>
{% assign album_posts = site.posts | where: "album", true %}

<section class="gallery">
  <ul class="embedded blog-posts">
    {% for post in album_posts %}
      <li>
        <a href="{{ post.url }}">
          <div class="post-date">
            {{ post.date | date: "%d/%m/%Y" }}
          </div>
          <div class="image-wrapper">
            <img src="{{ post.image }}" alt="{{ post.title }}">
          </div>
          <p class="caption">{{ post.caption }}</p>
        </a>
      </li>
    {% endfor %}
  </ul>
</section>
