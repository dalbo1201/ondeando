---
layout: paginas
title: Registro de Alterações
description: registro das modificações que faço neste pequeno espaço da internet.
permalink: "/registro-de-alteracoes"
---
<h2><span aria-hidden="true">|<span class="h2-menor">o </span></span>Registro<span class="h2-menor"> de alterações</span></h2>

O famoso [Changelog<sup>[en]</sup>](https://indieweb.org/release_notes) é simplesmente um resumo das alterações <del>consideradas mais pertinentes</del> realizadas aqui neste meu pequeno canto da internet.
<hr>

<div class="timeline">
  <ul>
    {% assign ano_vigente = "" %}
    {% for item in site.data.atualizacao %}
      
    {% if item.ano != ano_vigente %}
 <li><h4>Alterações em {{ item.ano }}</h4></li>
     {% assign ano_vigente = item.ano %}
    {% endif %}
 <li>
<h5 id="{{ item.data_id }}">{{ item.data_texto }}</h5>
        
    {% for entrada in item.entradas %}
    {% for tag in entrada.tags %}
<span class="tag-reg">{{ tag }}</span>
    {% endfor %}
<br/>
    {{ entrada.texto | markdownify | remove: '<p>' | remove: '</p>' }}
          
{% unless forloop.last %}
<br/>
    {% endunless %}
        {% endfor %}
      </li>

    {% endfor %}
  </ul>
</div>