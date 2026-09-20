---
layout: paginas
title: filmes
description: Filmes assistidos
image: /assets/og_image/og-image-colofao.jpg
permalink: "/filmes"
---
<h2 id="topo"><span aria-hidden="true">|</span><span class="h2-menor">os </span>filmes<span class="h2-menor"> assistidos</span></h2>

Esta página existe para guardar os filmes que já assisti de uma forma organizada e fora de qualquer plataforma. Uma pequena brincadeira, como muita coisa aqui do site.  

Aproveitando a construção da [plataforma mais famosa de registro de filmes](https://letterboxd.com/dalbo1201/), fiz também meu [diário](/filmes/diario).  

Veja <a href="/assistindo">o que estou assistindo</a>

---

{% assign filmes_ordenados = site.data['catalogo-filmes'] | sort_natural: "titulo_br" %}

{% assign letras_validas = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z" | split: "," %}
{% assign letras_usadas = "" %}

{% for item in filmes_ordenados %}
  {% assign primeira_letra = item.titulo_br | strip | slice: 0, 1 | upcase %}

  {% unless letras_validas contains primeira_letra %}
    {% assign primeira_letra = "#" %}
  {% endunless %}

  {% assign letras_usadas = letras_usadas
    | append: primeira_letra
    | append: ","
  %}
{% endfor %}

{% assign letras = letras_usadas | split: "," | uniq | sort %}

<section class="nuvem-filmes">
  {% for letra in letras %}
    {% if letra != "" %}
      <a href="#{{ letra | slugify }}">{{ letra }}</a>
    {% endif %}
  {% endfor %}
</section>

<ul class="lista-tags">

  {% for letra in letras %}
    {% if letra != "" %}

      <li>
        <h4 id="{{ letra | slugify }}">
          {{ letra }}
          <a href="#topo">&#8593;</a>
        </h4>

        <ul class="lista-filmes">

          {% for item in filmes_ordenados %}

            {% assign primeira_letra = item.titulo_br | strip | slice: 0, 1 | upcase %}

            {% unless letras_validas contains primeira_letra %}
              {% assign primeira_letra = "#" %}
            {% endunless %}

            {% if primeira_letra == letra %}

              <li class="item-filme">

                <div class="filme-poster">
                  <img
                    src="{{ item.poster_url }}"
                    alt="Pôster de {{ item.titulo_pt }}"
                    loading="lazy"
                  >

 <div
                class="filme-nota"
                aria-label="Nota: {{ item.nota }} de 5"
              >
                <span class="estrelas">

                  {% assign nota_inteira = item.nota | floor %}

                  {% for numero_estrela in (1..5) %}

                    {% assign limite_meia_estrela = numero_estrela
                      | minus: 0.5
                    %}

                    {% if numero_estrela <= nota_inteira %}

                      <i class="fa-solid fa-star"></i>

                    {% elsif item.nota >= limite_meia_estrela %}

                      <i class="fa-solid fa-star-half-stroke"></i>

                    {% else %}

                      <i class="fa-regular fa-star"></i>

                    {% endif %}

                  {% endfor %}

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

                  {% if item.datas_assistidas.size > 0 %}
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