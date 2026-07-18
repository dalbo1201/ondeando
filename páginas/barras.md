---
layout: paginas
title: Barras
description: Um mapa para o site.
permalink: "/barras"
---
<h2>
<span aria-hidden="true">|</span>Barras
</h2>
A página <i>/barras</i> (ou <a href="https://slashpages.net/#slashes">/slashes<sup>[en]</sup></a> em inglês) serve para você encontrar os caminhos das páginas deste cantinho na web.

<hr>

<ul class="lista-barras">
{% assign paginas_ordenadas = site.data['barras'] | sort_natural: "pagina" %}
{% for item in paginas_ordenadas %}

<li><a href="{{ item.url }}" title="{{ item.title }}">/{{ item.pagina }}</a>: {{ item.descricao | markdownify | replace: '<p>', '' | replace: '</p>', '' }}</li>

{% endfor %}
</ul>