---
layout: paginas
title: filmes
description: Filmes assistidos
image: /assets/og_image/og-image-colofao.jpg
permalink: "/filmes"
published: false
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">os </span>filmes<span class="h2-menor"> assistidos</span></h2>

<a href="/filmes-diarios">Meu diário</a>

{% assign filmes_ordenados = site.data['catalogo-filmes'] | sort_natural: "titulo_br" %}

<ul class="lista-filmes">
{% for item in filmes_ordenados %}
<li class="item-filme">
    <div class="filme-poster">
        <img
          src="{{ item.poster_url }}"
          alt="Pôster de {{ item.titulo_pt }}"
          loading="lazy"
        >
    <div class="filme-nota" aria-label="Nota: {{ item.nota }} de 5">
        <span class="estrelas">
        {% if item.nota == 1.0 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 1.5 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star-half-stroke"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 2.0 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 2.5 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star-half-stroke"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 3.0 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 3.5 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star-half-stroke"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 4.0 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>

        {% elsif item.nota == 4.5 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star-half-stroke"></i>

        {% elsif item.nota == 5.0 %}
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
{% endif %}
</span>

{% if item.imdb_url and item.imdb_url != "" %}
  <a
    class="filme-imdb"
    href="{{ item.imdb_url }}"
    title="Ver {{ item.titulo_br }} no IMDb"
  >
    IMDb
  </a>
{% endif %}

{% if item.imdb_url and item.imdb_url != "" %}
  <a
    class="filme-imdb"
    href="{{ item.url }}"
    title="Ver {{ item.titulo_br }} no Ldbxd"
  >
    Ldbxd
  </a>
{% endif %}

</div>
</div>

<div class="filme-informacoes">

   <div class="filme-cabecalho">
    <h5>
    {{ item.titulo_br }}
    <span class="filme-ano">({{ item.lancamento }})</span>
    </h5>

   {% if item.curtido == true %}
   <span
     class="filme-curtido"
     title="Filme curtido"
     aria-label="Filme curtido">
    <i class="fa-solid fa-heart"></i>
    </span>
    {% endif %}
    </div>

   <h6 class="filme-titulo-original">
          {{ item.filme }}
   </h6>

   <p class="filme-diretor">
          {{ item.diretor }}
   </p>

{% if item.datas_assistidas.size > 0 %}
  <p class="filme-data">
    vi em
    {% for data in item.datas_assistidas %}
      {{ data | date: "%d/%m/%Y" }}{% unless forloop.last %}, {% endunless %}
    {% endfor %}
  </p>
{% endif %}

   {% if vezes_assistido >= 2 %}
    <span
        class="filme-revisto"
        title="Filme revisto"
        aria-label="Filme revisto">
        <i class="fa-solid fa-arrow-rotate-left"></i>
       </span>
   {% endif %}

   <div class="filme-tags">
    {% assign tags_ordenadas = item.tags | sort_natural %}

    {% for tag in tags_ordenadas %}
   <span class="tag-filme">{{ tag }}</span>
    {% endfor %}
   </div>

   <div class="filme-review">
    {{ item.review | markdownify | remove: '<p>' | remove: '</p>' }}
   </div>

   </div>
</li>
 {% endfor %}
</ul>