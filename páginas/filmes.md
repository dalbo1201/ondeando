---
layout: paginas
title: filmes
description: Filmes assistidos
image: /assets/og_image/og-image-colofao.jpg
permalink: "/filmes"
published: false
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">os </span>filmes<span class="h2-menor"> assistidos</span></h2>

<ul class="lista-tags">
  {% for item in site.data.filmes %}
<li class="linha-post">
<h5>{{ item.filme }} ({{ item.lancamento }})</h5>
{% if item.curtido == true %}
        <span style="color: var(--color-hover)">
          <i class="fa-solid fa-heart"></i>
        </span>
{% endif %}

<h6 style="text-wrap: balance;">{{ item.data_visto | date: "%d/%m/%Y" }}</h6>

{% if item.revisto == true %}
        <span>
          <i class="fa-solid fa-arrow-rotate-left"></i>
        </span>
{% endif %}

<p>
<span style="color: var(--color-hover)">
        {% if item.nota == 1.0 %}
          <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>

        {% elsif item.nota == 1.5 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>

        {% elsif item.nota == 2.0 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>

        {% elsif item.nota == 2.5 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>

        {%elsif item.nota == 3.0 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>

        {% elsif item.nota == 3.5 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i>

        {% elsif item.nota == 4.0 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>

        {% elsif item.nota == 4.5 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>

        {% elsif item.nota == 5.0 %}
          <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
        {% endif %}
</span>
</p>
 {{ item.review | markdownify | remove: '<p>' | remove: '</p>' }}
    </li>
    <br/>
  {% endfor %}
</ul>