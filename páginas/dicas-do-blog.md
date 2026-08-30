---
layout: paginas
title: dicas do blog
excerpt: Um local onde eu vou colocar algumas coisas que eu fiz aqui e acho que vale compartilhar.
permalink: "/dicas-do-blog"
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">as </span>dicas<span class="h2-menor"> do blog</span> </h2>

Se você chegou até aqui pode ser que eu tenha algo bacana a dizer que possa ajudar a encontrar mais fácil algum processo que eu já fiquei tentando antes e sofri para resolver.  

Acho que, no final, isso é a antiga web.  

As dicas que já temos por aqui são:

{% assign tutoriais_ordenados = site.data['dicas_do_blog'] | sort_natural: "tutorial" %}

<ul>
{% for item in tutoriais_ordenados %}
<li><a href="#{{ item.id }}">{{ item.tutorial }}</a></li>
{% endfor %}
</ul>
<hr>
{% for item in tutoriais_ordenados %}

<h4 id="{{ item.id }}">{{ item.tutorial }} <a href="#">&uarr;</a></h4>
{% assign tags_ordenadas = item.tag | sort_natural %}
{%- for tag in tags_ordenadas -%}
<span class="tag-reg">{{ tag }}</span>
{%- endfor %}
{{ item.descricao | markdownify | remove: '<p>' | remove: '</p>' }}
<br/>
{% endfor %}