---
layout: paginas
title: Currículo
image: /assets/foto-pedro.jpg
description: Meu currículo atualizado.
image: /assets/foto-pedro.jpg
permalink: "/profissional/cv"
---
<h2>
<span aria-hidden="true">|<span class="h2-menor">meu </span></span>currículo
</h2>

<aside><a href="/assets/downloads/Pedro Dal Bó.pdf" title="meu currículo atualizado">Currículo em PDF</a></aside>

   <!-- Seção de experiência -->
  <section aria-labelledby="experiencia-titulo">
    <h3 id="experiencia-titulo">Experiência Profissional</h3>
<article class="curriculo">
<p>Desenvolvo projetos geométricos e de terraplenagem de rodovias, ferrovias e vias urbanas com Civil3D. Participo da coordenação interna de contratos na Equipe de Geometria e Terraplenagem, gerenciando e distribuindo tarefas, entrega de produtos, definições e soluções técnicas. Elaborei modelagens de maquetes eletrônicas e vídeos curtos com Infraworks, além de quantitativos de disciplinas como Obras de Arte Especiais, Túneis e Barreiras Acústicas. Auxiliei no acompanhamento e elaboração de relatórios de ATO.</p>
</article>
</section>

   <!-- Seção de trabalhos e empresas -->
<!-- Seção de trabalhos e empresas -->
<section aria-labelledby="trabalhos-titulo">
  <h3 id="experiencia-titulo">Trabalhos realizados</h3>
{% assign empresas_ordenadas = site.data['curriculo'] | sort: "data_inicio_id" | reverse %}
{% for empresa in empresas_ordenadas %}
<article class="curriculo">
  <h4>{{ empresa.empresa }}</h4>
  <em>{{ empresa.local }}</em>
  <p>
  {% for item in empresa.cargos %}
    <b>{{ item.cargo }}</b>: <time datetime="{{ item.data_inicio_id }}">{{ item.data_inicio }}</time> – <time datetime="{{ item.data_fim_id }}">{{ item.data_fim }}</time>{% unless forloop.last %}<br/>{% endunless %}
  {% endfor %}
  </p>
  {{ empresa.descricao | markdownify }}
</article>
{% endfor %}
</section>

  <!-- Formação -->
  <section aria-labelledby="formacao-titulo">
    <h3 id="formacao-titulo">Formação</h3>
  <article class="curriculo">
  <h4>Engenharia Civil (2011)</h4>
    <p>Universidade Federal do Rio de Janeiro</p>
  </article>
  </section>

  <!-- Informática -->
  <section aria-labelledby="informatica-titulo">
    <h3 id="informatica-titulo">Informática</h3>
    <article class="curriculo">
    <ul>
      <li>Infraworks – CadStudio Pro System;</li>
      <li>PowerCivil v8i – Itis Tecnologia;</li>
      <li>AutoCAD Civil 3D – Deskgraphik;</li>
      <li>AutoCAD – SENAI Ary Torres.</li>
    </ul>
    </article>
  </section>

  <!-- Idiomas -->
  <section aria-labelledby="idiomas-titulo">
    <h3 id="idiomas-titulo">Idiomas</h3>
    <article class="curriculo">
    <ul>
      <li>Português: Nativo;</li>
      <li>Inglês: Intermediário.</li>
    </ul>
    </article>
  </section>
 
 <!-- Seção de contato -->
  <section aria-labelledby="contato-titulo">
    <h3 id="contato-titulo">Contato</h3>
    <article class="curriculo">
    <address>
     <ul>
      <li><a href="mailto:pedro@dalbo.me?subject=Contato profisisonal pelo site" title="Onde falar comigo">pedro@dalbo.me</a></li>
      <li><a href="https://www.linkedin.com/in/pedrodalbo" rel="noopener" aria-label="meu perfil no LinkedIn (atualizado)" title="meu perfil no LinkedIn (atualizado)">in/pedrodalbo</a></li>
</ul>
     <p>Residência em São Paulo, SP</p>
    </address>
    </article>
  </section>