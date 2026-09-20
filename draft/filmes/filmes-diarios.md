---
layout: paginas
title: filmes
description: Filmes assistidos
image: /assets/og_image/og-image-colofao.jpg
permalink: "/filmes-diarios"
published: false
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">meu </span>diário<span class="h2-menor"> de filmes</span></h2>

Aqui estão reunidos os filmes que eu tenho anotada a data de quando os assisti, não é a maioria e muitos na verdade são depois que criei minha [conta no Letterboxd](https://letterboxd.com/dalbo1201/) e passei a marcar essa informação.  

para ver todos os filmes que já assisti (ou lembro de ter assistido) é só ir até a minha [página de filmes](/filmes).  

---

{% assign filmes_filtrados = site.data['catalogo-filmes']
  | where_exp: "item", "item.vezes_assistido > 0"
%}

{% assign anos_usados = "" %}

{% for item in filmes_filtrados %}
  {% assign ultima_data = item.datas_assistidas | last %}
  {% assign ano = ultima_data | date: "%Y" %}

  {% assign anos_usados = anos_usados
    | append: ano
    | append: ","
  %}
{% endfor %}

{% assign anos = anos_usados | split: "," | uniq | sort | reverse %}

<section class="nuvem-filmes">
  {% for ano in anos %}
    {% if ano != "" %}
      <a href="#ano-{{ ano }}">{{ ano }}</a>
    {% endif %}
  {% endfor %}
</section>

<ul class="lista-tags">

  {% for ano in anos %}
    {% if ano != "" %}

      <li>
        <h4 id="ano-{{ ano }}">
          {{ ano }}
          <a href="#">&#8593;</a>
        </h4>

        <ul class="lista-filmes">

          {% for item in filmes_filtrados %}

            {% assign ultima_data = item.datas_assistidas | last %}
            {% assign ano_do_filme = ultima_data | date: "%Y" %}

            {% if ano_do_filme == ano %}

              <li class="item-filme">

                <div class="filme-poster">
                  <img
                    src="{{ item.poster_url }}"
                    alt="Pôster de {{ item.titulo_br }}"
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
                        <i class="solid fa-star"></i>
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

                    {% if item.url and item.url != "" %}
                      <a
                        class="filme-imdb"
                        href="{{ item.url }}"
                        title="Ver {{ item.titulo_br }} no Letterboxd"
                      >
                        Letterboxd
                      </a>
                    {% endif %}
                  </div>
                </div>

                <div class="filme-informacoes">

                  <div class="filme-cabecalho">
                    <h5>
                      {{ item.titulo_br }}
                      <span class="filme-ano">
                        ({{ item.lancamento }})
                      </span>
                    </h5>

                    {% if item.curtido == true %}
                      <span
                        class="filme-curtido"
                        title="Filme curtido"
                        aria-label="Filme curtido"
                      >
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

                  {% if item.datas_assistidas and item.datas_assistidas.size > 0 %}
                    <p class="filme-data">
                      vi em
                      {% for data in item.datas_assistidas %}
                        {{ data | date: "%d/%m/%Y" }}
                        {% unless forloop.last %}, {% endunless %}
                      {% endfor %}
                    </p>
                  {% endif %}

                  {% if item.vezes_assistido >= 2 %}
                    <span
                      class="filme-revisto"
                      title="Filme revisto"
                      aria-label="Filme revisto"
                    >
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
                    {{ item.review
                      | markdownify
                      | remove: '<p>'
                      | remove: '</p>'
                    }}
                  </div>

                </div>

              </li>

            {% endif %}

          {% endfor %}

        </ul>
      </li>

    {% endif %}
  {% endfor %}

</ul>