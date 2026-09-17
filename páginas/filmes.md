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
<li class="linha-post" style="border: solid 1px var(--color-link); padding: 5px">
<h5>{{ item.titulo_pt }} ({{ item.lancamento }})</h5>
{% if item.curtido == true %}
        <span style="color: var(--color-hover)">
          <i class="fa-solid fa-heart"></i>
        </span>
{% endif %}
<h6>{{ item.filme }}</h6>
<p>{{ item.diretor }}<br/>
vi em {{ item.data_visto | date: "%d/%m/%Y" }}</p>
{% if item.revisto == true %}
        <span>
          <i class="fa-solid fa-arrow-rotate-left"></i>
        </span>
{% endif %}

  {% assign tags_ordenadas = item.tags | sort_natural %}
  {%- for tags in tags_ordenadas -%}
    <span class="tag-reg">{{ tags }}</span>
  {%- endfor %}

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