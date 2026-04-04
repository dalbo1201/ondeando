---
layout: paginas
title: Blogrol
description: O rol de sites e blogs que eu leio, sigo e recomendo.
permalink: "/blogrol"
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">um </span>rol de Blogs</h2>

Aqui apresento uma lista, que sempre estará em constante mudanças, de blogs, sites ou jardins digitais que vou descobrindo e estou acompanhando.  

São todos locais pessoais, gente que está tentando criar uma internet agradável e longe de aplicativos de mídias sociais que só querem nos prender dentro do seu sistema. Não teremos newsletteres por aqui, acredito que apesar de muitas terem um desejo de ser blog, os serviços de newsletteres agem de forma semelhante (mesmo que em menor grau) as mídias sociais. São espaços que tentam te manter lá.

A ordem de apresentação é alfabética, por que a cada momento algum tem um espaço especial nas minhas leituras.
<hr>
{% assign blogs_ordenados = site.data['blogrol-br'] | sort_natural: "blog" %}
{% for item in blogs_ordenados %}

<h4>
{% if item.url %}<a href="{{ item.url }}">{{ item.blog }}</a>{% else %}{{ item.blog }}{% endif %}
</h4>

<h6>
{%- assign sep = "" -%}

{%- if item.autor != "" and item.autor != nil -%}
{{- sep -}}{{- item.autor -}}
{%- assign sep = " | " -%}
{%- endif -%}

{%- if item.tipo != "" and item.tipo != nil -%}
{{- sep -}}{{- item.tipo -}}
{%- assign sep = " | " -%}
{%- endif -%}

{%- if item.plataforma != "" and item.plataforma != nil -%}
{{- sep -}}{{- item.plataforma -}}
{%- assign sep = " | " -%}
{%- endif -%}

{%- if item.feed != "" and item.feed != nil -%}
{{- sep -}}<a href="{{ item.feed }}">feed</a>
{%- assign sep = " | " -%}
{%- endif -%}

</h6>

{% if item.descricao %}
{{ item.descricao | markdownify }}
{% endif %}


{% endfor %}
<br/>
<h5>em inglês, porque é o que eu <i>sei ler</i>, fora o português</h5>

{% assign blogs_ordenados = site.data['blogrol-en'] | sort_natural: "blog" %}
{% for item in blogs_ordenados %}

<h4>
{% if item.url %}<a href="{{ item.url }}">{{ item.blog }}</a>{% else %}{{ item.blog }}{% endif %}
</h4>

<h6>
{%- assign sep = "" -%}

{%- if item.autor != "" and item.autor != nil -%}
{{- sep -}}{{- item.autor -}}
{%- assign sep = " | " -%}
{%- endif -%}

{%- if item.tipo != "" and item.tipo != nil -%}
{{- sep -}}{{- item.tipo -}}
{%- assign sep = " | " -%}
{%- endif -%}

{%- if item.plataforma != "" and item.plataforma != nil -%}
{{- sep -}}{{- item.plataforma -}}
{%- assign sep = " | " -%}
{%- endif -%}

{%- if item.feed != "" and item.feed != nil -%}
{{- sep -}}<a href="{{ item.feed }}">feed</a>
{%- assign sep = " | " -%}
{%- endif -%}

</h6>

{% if item.descricao %}
{{ item.descricao | markdownify }}
{% endif %}


{% endfor %}
<br/>
<aside class="aviso-caixa"><div class="aviso-texto">Quer descobrir outros blogs em português?<br/>
Acesse o <a href="https://lerama.pcdomanual.com/?category=blogs&tag" title="repositório de blogs pt-br">Lerama</a>, um repositório de blogs mantido pelo <a href="https://manualdousuario.net" title="excelente blog de tecnologia">Manual do Usuário</a>.
Tenho certeza que vai encontrar blogs que irão te agradar.
</div></aside>
<br/>

{% include entreblogs-webring.html %}
