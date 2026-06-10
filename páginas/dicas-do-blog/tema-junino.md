---
layout: paginas
title: Tema Junino | Dicas do blog
permalink: "/dicas-do-blog/tema-junino"
---
<h2><span aria-hidden="true">|</span><span class="h2-menor">meu </span>Tema Junino</h2>  
Bom, consegui colocar no ar o tema junino, eu espero que gostem e caso tenham dicas de como melhorar vamos [trocar uma ideia](mailto:pedro@dalbo.me?subject=Tema Junino").

<a href="/dicas-do-blog">&laquo; voltar para as dicas</a>
<hr>  
A ideia aqui é apresentar o código que eu usei para alterar as classes, fontes, cores e adicionar as gracinhas, como os balões percorrendo o site, a fogueira...  

Fiquem a vontade para copiar, fazer as alterações necessárias para aplicar no seu blog ou site.  

Divirtam-se.  

<div class="tutorial">
<p>Eu criei um arquivo <code>css</code> separado para as modificações que o tema aplica, o <b>tema-junino.css</b>. No <code>head</code> eu adicionei uma condição de tempo que faz com que o tema seja considerado apenas durante mês de junho, assim não preciso ficar adicionando e retirando e correr o risco de esquecer.</p>

<pre><code>
{% raw %}{% assign mes_atual = site.time | date: "%m" | plus: 0 %}
{% if mes_atual == 6 %}
 &lt;link href="https://fonts.bunny.net/css?family=Luckiest+Guy|Special+Elite|Slackey" rel="stylesheet"&gt;
{% endif %}  

{% assign mes_atual = site.time | date: "%m" | plus: 0 %}
{% if mes_atual == 6 %}
  &lt;link rel="stylesheet" href="{{ '/assets/tema-junino.css' | relative_url }}"&gt;
{% endif %}
{% endraw %}
</code></pre>

<p>E o código do <code>tema-junino.css</code></p>

<pre><code>
/* =====================================================
   TEMA FESTA JUNINA — CSS COMPLEMENTAR
   ===================================================== */


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
  --font-h1:      'Slackey', sans-serif;
  --font-h1menor: 'Special Elite', sans-serif;
  --font-h2:      'Luckiest Guy', sans-serif;
  --font-h3:      'Special Elite', sans-serif;
  --font-h4:      'Special Elite', sans-serif;
  --font-h5:      'Special Elite', sans-serif;
  --font-h6:      'Special Elite', sans-serif;
}


/* --- FONTES NOS TÍTULOS --- */
/* O styles.css original não referencia --font-h*, então precisamos
   aplicar explicitamente aqui. */
h1          { font-family: var(--font-h1); }
.h1-menor   { font-family: var(--font-h1menor); }

h2 {
  font-family: var(--font-h2);
  text-transform: uppercase;
  /* CORREÇÃO DO CHAPÉU: o ::before absolute precisa de um pai posicionado */
  position: relative;
  display: inline-block; /* Faz o h2 abraçar só o texto, o chapéu fica colado nele */
}

.h2-menor {
  font-family: var(--font-h2);
  text-transform: uppercase;
}

h3 { font-family: var(--font-h3); }
h4 { font-family: var(--font-h4); }
h5 { font-family: var(--font-h5); }
h6 { font-family: var(--font-h6); }


/* --- CHAPÉU NO h2::before --- */
/* Funciona agora porque o h2 acima tem position: relative */
h2::before {
  content: "";
  position: absolute;
  top:  -.9em;
  left: -.8em;
  width:  1.8em;
  height: 1.8em;
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
  height: 1.2em;
  width:  1.2em;
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
