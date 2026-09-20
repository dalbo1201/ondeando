---
layout: paginas
title: filmes
description: Filmes assistidos
image: /assets/og_image/og-image-colofao.jpg
permalink: "/filmes/diario"
---
<h2 id="topo"><span aria-hidden="true">|</span><span class="h2-menor">meu </span>diário<span class="h2-menor"> de filmes</span></h2>

Aqui estão reunidos os filmes que eu tenho anotada a data de quando os assisti, não é a maioria e muitos na verdade são depois que criei minha [conta no Letterboxd](https://letterboxd.com/dalbo1201/) e passei a marcar essa informação.  

Para ver todos os filmes que já assisti (ou lembro de ter assistido) é só ir até a minha [página de filmes](/filmes).  

Veja <a href="/assistindo">o que estou assistindo</a>

---

{% assign filmes_filtrados = site.data['catalogo-filmes']
  | where_exp: "item", "item.vezes_assistido > 0"
%}

{% assign datas_usadas = "" %}

{% for item in filmes_filtrados %}
  {% assign ultima_data = item.datas_assistidas | last %}
  {% assign data_formatada = ultima_data | date: "%Y-%m-%d" %}

  {% assign datas_usadas = datas_usadas
    | append: data_formatada
    | append: ","
  %}
{% endfor %}

{% assign datas = datas_usadas | split: "," | uniq | sort | reverse %}

{% assign anos_usados = "" %}

{% for data in datas %}
  {% if data != "" %}
    {% assign ano = data | slice: 0, 4 %}

    {% assign anos_usados = anos_usados
      | append: ano
      | append: ","
    %}
  {% endif %}
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

  {% assign ano_atual = "" %}
  {% assign primeiro_ano = true %}

  {% for data in datas %}

    {% if data != "" %}

      {% assign ano_da_data = data | slice: 0, 4 %}

      {% if ano_da_data != ano_atual %}

        {% unless primeiro_ano %}
            </ul>
          </li>
        {% endunless %}

        <li>
          <h4 id="ano-{{ ano_da_data }}">
            {{ ano_da_data }}
            <a href="#topo">&#8593;</a>
          </h4>

          <ul class="lista-filmes">

        {% assign ano_atual = ano_da_data %}
        {% assign primeiro_ano = false %}

      {% endif %}

      {% for item in filmes_filtrados %}

        {% assign ultima_data = item.datas_assistidas | last %}
        {% assign data_do_filme = ultima_data | date: "%Y-%m-%d" %}

        {% if data_do_filme == data %}

          <li
            class="item-filme"
            data-ultima-data="{{ data_do_filme }}"
          >

            <div class="filme-poster">
              <img
                src="{{ item.poster_url }}"
                alt="Pôster de {{ item.titulo_br }}"
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

              {% if item.datas_assistidas
                and item.datas_assistidas.size > 0
              %}
                <p class="filme-data">
                  vi em
                  {% for data_assistida in item.datas_assistidas %}
                    {{ data_assistida | date: "%d/%m/%Y" }}
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

    {% endif %}

  {% endfor %}

  {% unless primeiro_ano %}
      </ul>
    </li>
  {% endunless %}

</ul>
