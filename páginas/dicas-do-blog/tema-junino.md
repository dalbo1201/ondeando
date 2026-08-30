---
layout: paginas
title: tema junino | dicas do blog
permalink: "/dicas-do-blog/tema-junino"
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">meu </span>tema junino</h2>  
Bom, consegui colocar no ar o tema junino, eu espero que gostem e caso tenham dicas de como melhorar vamos [trocar uma ideia](mailto:pedro@dalbo.me?subject=Tema Junino").

<a href="/dicas-do-blog">&laquo; voltar para as dicas</a>
<hr>  
A ideia aqui é apresentar o código que eu usei para alterar as classes, fontes, cores e adicionar as gracinhas, como os balões percorrendo o site, a fogueira...  Como falei antes na [postagemde apresentação](/blog/um-tema-festivo/), a ideia foi inspirada no [tema de halloween do Birming](https://robertbirming.com/bear-halloween-theme/ "tema de halloween").

Fiquem a vontade para copiar, fazer as alterações necessárias para aplicar no seu blog ou site.  

Divirtam-se.  

<div class="tutorial">
<p>Eu criei um arquivo <code>css</code> separado para as modificações que o tema aplica, o <b>tema-junino.css</b>. No <code>head</code> eu adicionei uma condição de tempo que faz com que o tema seja considerado apenas durante mês de junho, assim não preciso ficar adicionando e retirando e correr o risco de esquecer.</p>

<pre><code>
{% raw %}{% assign mes_atual = site.time | date: "%m" | plus: 0 %}
{% if mes_atual == 6 %}
 &lt;link href="https://fonts.bunny.net/css?family=Special+Elite" rel="stylesheet"&gt;
{% endif %}  

{% assign mes_atual = site.time | date: "%m" | plus: 0 %}
{% if mes_atual == 6 %}
  &lt;link rel="stylesheet" href="{{ '/assets/tema-junino.css' | relative_url }}"&gt;
{% endif %}
{% endraw %}
</code></pre>

<p>As principais mudanças no blog são primeiro as cores. Ficamos com uma paleta mais viva com um fundo voltado pro amarelo. A fonte dos textos corridos ficam num marrom, os links principais vão para uma cor azul e os secundários apra um verde. O senso-comum nos dá uma percepção de interior.</p>

<p>As fontes vão mudar também para acompanharmos esse <i>ar de interior</i>. </p>
<p>A fonte do texto corrido muda para a <a href="https://fonts.bunny.net/family/special-elite" title="fonte dos textos corridos">Special Elite</a>, uma fonte mais serifada que me deu uma sensação agradável ao ler. Como essa fonte deixa as letras mais próximas, dei uma leve espaçada nas distâncias para melhorar a leitura.</p>
<p>Para as outras fontes de títulos eu fui atrás de soluções que dessem uma cara mais do nordeste, acho que essa nossa região do país trás tradições muito mais bacanas das festas juninas e vale muito a pena essas homenagems. Infelizmente não as encontrei no <i><a href="https://fonts.bunny.net/" title="site de acervo de fontes">Bunny Fonts<sup>[en]</sup></a></i> e precisei fazer os download e colocar no repositório do site.</p>
<p>Dito isso, para o <b>título do site</b> encontrei a fonte <a href="https://www.dafont.com/pt/cratense.font" title="fonte do título do site"><b>Cratense</b></a>, da <a href="https://www.behance.net/luceliabarbosa" title="não tenho certeza se é o perfil correto, mas tentei creditar">Lucélia Barbosa</a>. Curioso pensar que tive um velho amigo que no final da juventude se mudou para Crato e infelizmente perdemos contato, fica aqui essa homenagem a ele também. Abrçaos a você júnior.

<blockquote>Com intuito de preservar e promover a memória histórica do Crato, a tipografia "Cratense" foi inspirada na arquitetura nordestina e desenvolvida a partir do registro fotográfico das platibandas do Centro da cidade. As platibandas ainda são muito frequentes na cidade e deixaram como forma de expressão artística dos mestres pedreiros marcas únicas e se tornaram identidade das pequenas cidades. Por ser display é um tipo ideal para títulos e textos curtos.</blockquote>

<p>O <b>sub-título do blog</b> e os <b>títulos das páginas</b> estão usando a fonte <a href="https://www.behance.net/gallery/197757959/Asa-Branca-Tipografia-vernacular-Free-font" title="fonte dos títulos de página e sub-título do site"><b>Asa Branca</b></a>, da designer <a href="https://www.behance.net/viviandos">Vívian de Oliveira</a>.</p>

<blockquote>Asa Branca é uma tipografia brasileira, desenvolvida a partir dos letreiramentos vernaculares da cidade de Caruaru, que fica no interior de Pernambuco. Seu nome faz referência a uma ave migratória, que possui um forte simbolismo de liberdade e resistência na cultura nordestina, tendo inclusive, inspirado a famosa música de Luiz Gonzaga, do mesmo nome.</blockquote>

<p>Finalizando o trabalho de fontes, temos a fonte utilizada para os tírulos das postagens do blog e fotolog. A <a href="https://www.dafont.com/pt/cactus-2.font" title="fonte dos títuloas das postagens">Cactus</a>, feita pelo Marlon Gonçalves. Essa fonte é inspirada nos Cordéis do sertão nordestino.</p>

<p>Eu queria fazer mais <i>algumas gracinhas</i> no tema para dar mais um <i>ar de festa junina</i>, só as cores e essas fontes não seriam suficientes. Aproveitei uma proposta do Birming de colocar uns morceginhos voando, mas coloquei os balões tradicionais de festa junina.</p>

<p>Outros pequenos detalhes foram um chapéu de palha nos títulos das páginas, uma sanfoninha nos títulos das postagens e a troca dos símbolos de listas por uma espiga de milho e pipocas. E claro, uma fogueira no final da página.</p>

<p>Tenho a sensação de que alcancei um resultado bem bacana o tema.</p>

<p>E o código do <code>tema-junino.css</code></p>

<pre><code>
/* =====================================================
   TEMA FESTA JUNINA — CSS COMPLEMENTAR
   ===================================================== */

/* --- VARIÁVEIS de fontes locais --- */
@font-face {
  font-family: 'Cactus';
  src: url('/assets/fontes/Cactus Regular.otf') format('opentype');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}

@font-face {
  font-family: 'Cratense';
  src: url('/assets/fontes/Cratense.ttf') format('truetype');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}

@font-face {
  font-family: 'Asa Branca';
  src: url('/assets/fontes/ASA-BRANCA-1.0-Regular.otf') format('opentype');
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}

/* --- VARIÁVEIS TEMÁTICAS --- */
/* Sobrescreve as variáveis de cor e acrescenta as de fonte,
   que não existem no styles.css original. */
:root {
  --color-background: #fbe087;
  --color-text: #660800;
  --color-link: #005175;
  --color-hover: #005175;
  --color-quote: #005175;
  --color-code-background: #194d00;
  --color-data:#194d00;

  /* Fontes temáticas — variáveis novas, usadas só aqui */
  --font-geral: 'Special Elite', sans-serif; /* Fontes do texto em geral */
  --font-h1:      'Cratense', sans-serif; /* Fonte do Título do site */
  --font-h1menor: 'Asa Branca', sans-serif; /* Fonte do sub-Título do site */
  --font-h2:      'Asa Branca', sans-serif; /* Fonte do Título das páginas, aquele com | */
  --font-h3:      'Cactus', sans-serif; /* Fonte do título das postagens  */
  --font-h4:      'Special Elite', sans-serif;
  --font-h5:      'Special Elite', sans-serif;
  --font-h6:      'Special Elite', sans-serif;
}

/* --- FONTES NOS TÍTULOS --- */
/* O styles.css original não referencia --font-h*, então precisamos aplicar explicitamente aqui. */

h1 {  /* Fonte do Título do site  */
  font-family: var(--font-h1);
  font-size: clamp(3rem, 4vw, 4rem);
  letter-spacing: 0.06em; /* positivo = mais espaço */
}
.h1-menor { /* Fonte do sub-Título do site  */
  font-family: var(--font-h1menor);
  font-size: 1.5rem;
  letter-spacing: 0.01em; /* positivo = mais espaço */
}

.h1-pro { /* NOME DO SITE - cabeçalho */
  font-family: var(--font-h1);
  font-size: clamp(2rem, 4vw, 3rem);
  letter-spacing: 0.06em; /* positivo = mais espaço */
}

h2 { /* Fonte do Título das páginas, aquele com | */
  font-family: var(--font-h2);
  font-size: clamp(3rem, 4vw, 3.5rem); 
  line-height: clamp(3.2rem, 3vw, 3.7rem); 
  letter-spacing: 0.05em; /* positivo = mais espaço */
  /* CORREÇÃO DO CHAPÉU: o ::before absolute precisa de um pai posicionado */
  position: relative;
  display: inline-block; /* Faz o h2 abraçar só o texto, o chapéu fica colado nele */
}

.h2-menor { /* Fonte do sub-Título das páginas */
  font-family: var(--font-h2);
  font-size: clamp(2rem, 1.3vw, 2.5rem); /* 16–17px */
  line-height: clamp(2.2rem, 2vw, 2.7rem); /* 19–25px */
  letter-spacing: 0.02em; /* positivo = mais espaço */
}

h3 { /* Fonte do título das postagens  */
 font-family: var(--font-h3);
 font-size: clamp(2rem, 3vw, 2.2rem);
 line-height: .5;
} 

h4 { font-family: var(--font-h4); }
h5 { font-family: var(--font-h5); }
h6 { font-family: var(--font-h6); }

/* melhorando o espaçamento entre letras */
nav, .main-wrapper p, h4, h5, h6 {
letter-spacing: 0.06em; /* positivo = mais espaço */
} 

/* --- CHAPÉU NO h2::before --- */
/* Funciona agora porque o h2 acima tem position: relative */
h2::before {
  content: "";
  position: absolute;
  top:  -.4em;
  left: -.6em;
  width:  1.3em;
  height: 1.3em;
  background-image: url("/assets/tema-junino/chapéu.webp");
  background-size:     contain;
  background-repeat:   no-repeat;
  background-position: center;
  transform: rotate(-35deg) scaleX(-1);
  z-index: 2;
  pointer-events: none;
}

/* Mobile: o h2 vira block e recua para o chapéu não sair da tela */
@media only screen and (max-width: 40rem) {
  h2 {
    display: block;
    margin-left: .8rem;  /* dá espaço para o chapéu não cortar na borda */
  }
}

/* --- SANFONA NOS h3 --- */
h3::before,
h3::after {
  content: "";
  display: inline-block;
  height: 1em;
  width:  1em;
  background-image: url("/assets/tema-junino/sanfona.webp");
  background-size:     contain;
  background-repeat:   no-repeat;
  background-position: center;
  vertical-align: middle;
  position: relative;
  margin-bottom: 0.4em;
}


/* --- FOGUEIRA ACIMA DO FOOTER --- */
/* CORREÇÃO: o footer original não tem position: relative.
   Precisamos adicionar para que o ::before se ancore nele
   e não no body/viewport (que fazia a fogueira ir para o topo). */
footer {
  position: relative;
  margin-top: 60px; /* espaço para a fogueira "entrar" acima do footer */
}

footer::before {
  content: "";
  position: absolute;
  right:  -20px;
  bottom: 100%;   /* logo acima da borda superior do footer */
  width:  12rem;
  height: 12rem;
  background-image: url("/assets/tema-junino/fogueira.webp");
  background-size:     contain;
  background-repeat:   no-repeat;
  background-position: bottom right;
  z-index: 1;
  pointer-events: none;
  opacity: 0.9;
}

/* Garante que o conteúdo fique sobre a fogueira */
aside,
section {
  position: relative;
  z-index: 2;
}

/* Ajuste da fogueira no mobile */
@media only screen and (max-width: 40rem) {
  footer::before {
    width:  10rem;
    height: 10rem;
    right:  0;
    bottom: 100%;
  }
}


/* --- BALÕES VOANDO --- */
body::after {
  content: "";
  position: fixed;
  top:  40%;
  left: -120px;
  width:  10em;
  height: 10em;
  background-image: url("/assets/tema-junino/balão.webp");
  background-size:     contain;
  background-repeat:   no-repeat;
  background-position: center;
  opacity: 0.6;
  transform: scaleX(-1);
  z-index: -1;
  pointer-events: none;
  animation: balao-voando1 30s linear infinite;
}

body::before {
  content: "";
  position: fixed;
  top:  60%;
  left: -140px;
  width:  8em;
  height: 8em;
  background-image: url("/assets/tema-junino/balão.webp");
  background-size:     contain;
  background-repeat:   no-repeat;
  background-position: center;
  opacity: 0.5;
  transform: scaleX(-1);
  z-index: -1;
  pointer-events: none;
  animation: balao-voando2 35s linear infinite;
  animation-delay: 5s;
}

@keyframes balao-voando1 {
  0%   { transform: translate(0, 0)          rotate( 6deg) scaleX(-1); opacity: 0;   }
  5%   {                                                                opacity: 0.7; }
  50%  { transform: translate(60vw, -10vh)   rotate(-6deg) scaleX(-1);               }
  100% { transform: translate(160vw,  -4vh)  rotate( 8deg) scaleX(-1); opacity: 0;   }
}

@keyframes balao-voando2 {
  0%   { transform: translate(0, 0)          rotate(-8deg) scaleX(-1); opacity: 0;   }
  10%  {                                                                opacity: 0.7; }
  50%  { transform: translate(70vw,  -5vh)   rotate(10deg) scaleX(-1);               }
  100% { transform: translate(160vw, -12vh)  rotate(-6deg) scaleX(-1); opacity: 0;   }
}


/* --- MARCADORES JUNINOS --- */
ul li::marker,
ol li::marker          { content: "🍿 "; }
ul ul li::marker,
ol ol li::marker,
ol ul li::marker,
ul ol li::marker       { content: "🌽 "; opacity: 0.7; }

/* Zera em listas sem marcador visual */
[style*="list-style: none"] li::marker,
[style*="list-style:none"]  li::marker,
ul.lista-tags li::marker,
.gallery ul.embedded.album-post li::marker,
.social li::marker,
.timeline > ul li::marker { content: ""; }


/* --- ÍCONES DE AVISO TEMÁTICOS --- */
.aviso-caixa::before { content: '🔥'; font-size: 1.5rem; color: var(--color-link-background); }
.blog-colet::before  { content: "🍿"; font-size: 1.3rem; color: var(--color-link-background); }

/* Sobrescreve a font-family (o original usa Font Awesome, aqui usamos emoji) */
.aviso-caixa::before,
.blog-colet::before  { font-family: inherit; font-weight: normal; }


/* --- overflow-x no body para os balões não causarem barra de rolagem --- */
body { overflow-x: hidden; }
</code></pre>
