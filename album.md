---
layout: album
title: Album
pagination:
  enabled: true
  collection: posts  # Use a coleção posts diretamente
  per_page: 9
  permalink: '/page/:num/'
  title: ':title - página :num'
  sort_field: 'date'
  sort_reverse: true
  trail:
    before: 2
    after: 2
---
<section class="gallery">
  <ul class="embedded blog-posts">
    {% assign filtered_posts = site.posts | where: "album", true %}
    
    {% assign page = paginator.page %}
    {% assign per_page = paginator.per_page %}
    
    {% assign offset = page | minus: 1 | times: per_page %}
    {% assign posts_to_show = filtered_posts | slice: offset, per_page %}

    {% for post in posts_to_show %}
      <li>
        <a href="{{ post.url }}">
          <div class="post-date">{{ post.date | date: "%d/%m/%Y" }}</div>
          <div class="image-wrapper">
            <img src="{{ post.image | relative_url }}" alt="{{ post.title }}">
          </div>
          <p class="caption">{{ post.caption }}</p>
        </a>
      </li>
    {% endfor %}
  </ul>
</section>