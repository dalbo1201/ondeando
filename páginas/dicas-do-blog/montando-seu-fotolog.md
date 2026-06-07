---
layout: paginas
title: Montando seu Fotolog | Dicas do blog
permalink: "/dicas-do-blog/montando-seu-fotolog"
---
<h2><span aria-hidden="true">|</span>Montando<span class="h2-menor"> seu Fotolog</span> </h2>

Peguei a ideia do [Bruce Beaumont<sup>[en]</sup>](https://bruceblog.bearblog.dev/a-lazy-kind-of-photo-gallery-for-bear-blog/ "site do Bruce"), quando ele ensinou a montar a galeria em seu site pessoal. Mandei uma mansagem para ele dizendo que colocaria aqui como um tutorial e tive seu "ok".  

A seguir, eu vou colar o código que o Bruce disponibilizou originalmente no site pessoal dele, uma solução para o Bearblog. Depois eu coloco a minha adaptação para sites em Jekyll.  

Espero que isso facilite a vida de alguém por aí.
<ul>
<li><a href="#bearblog">Para Bearblog</a>,<em> o original</em> ;</li>
<li><a href="#jekyll">Para Jekyll</a>,<em> minha versão</em> ;</li>
<li><a href="#blogger">Para Blogger</a>,<em> pelo William</em>.</li>
</ul>

<a href="/dicas-do-blog">&laquo; voltar para as dicas</a>
<hr>
<h4 id="bearblog">Para Bearblog, <em style="font-height:12px;">o original</em> <a href="#" >↑</a></h4>
Peço desculpas, não traduzi o conteúdo dele, sigo como no original, mas nada que um _tradutor_ da internet não resolva.  

<div class="tutorial">
<p>Thumbnails with no cropping, in gridded rows, three per row, and just the title showing. <i>chef's kiss</i>.</p>

<p>The date is hidden and so is all other post content except the first item which is an image. You can click directly on the thumbnail to view full size, or click on the caption to go to the post itself. I might change it so that the image click brings you to the post instead, not sure. Anyways.</p>

<p>I use a template for new posts, this adds the tag by default.</p>
</div>

<pre><code>
---
title:  
published_date:  
tags: photos
---

[![scanname](link)](link)

caption

</code></pre>

<div class="tutorial">
<p>I can then drag and drop the photo into the prompt. CopyPaste the url to replace the two "(link)" bits. Hit publish and its done.</p>

<p>The photo must be the first item in the post. Any other content will be hidden on the gallery page. This is also styled on just the gallery page, if you wanted this to be universal you could add it to your theme.</p>

<p>I'm no expert in CSS or html so there's likely some more nonfunctional bits that can be cut out. If you find some let me know!</p>

<p>Thanks for reading, have a great day.</p>

<p>-Bruce</p><br/>

<p>Page content</p>
</div>
<pre><code>
&lt;style>
/* Credit goes to Sylvia and Robert, I just tinkered with it. Also thanks to Jedda for the initial inspiration.*/
/* Gallery styles */
.gallery { /* Gallery width */
  width: 90%;
  position: relative;
}

.gallery ul.embedded.blog-posts {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2em; /* Space in between thumbnails */
  justify-content: center;
  padding: 3em 0; /* Space above & below the gallery */
}

/* Box containing post content */
.gallery ul.embedded.blog-posts > li {
  width: 100%;
  height: min-content;
  font-size: 1em;
  display: flex;
  flex-direction: row; /* Change to "row-reverse" to display post title on left & date on right */
  flex-wrap: wrap-reverse; /* Change to "wrap" to display post title & date above image */
  justify-content: space-between; /* Change to "center" to center post title or date */
  align-items: baseline;
}

.gallery ul.embedded.blog-posts > li div p:first-child {
  margin-top: 0; /* Remove extra space above content */
  margin-bottom: .5em; /* Space in between image and post title */
}

/* Post title */
.gallery ul.embedded.blog-posts > li > a {
  /* Add display: none; to hide post title */
}

/* Date */
.gallery ul.embedded.blog-posts > li span:has(> i time) {
  /* Add display: none; to hide date */
   display: none;
}

/* Post body */
.gallery ul.embedded.blog-posts > li > div {
  flex-basis: 100%;
}

.gallery ul.embedded.blog-posts > li > div > p img {
  object-fit: contain;
  width: 100%; /* Resize to desired width */
  height: 100%; /* Resize to desired height */
}

.gallery ul.embedded.blog-posts > li > div > p:nth-child(n+2) {
  display: none; /* Hides content after image */
}
</style>

</code></pre>

<pre><code>
&lt;section class="gallery"&gt;
{% raw %}
{{ posts | tag:photos | content:True | limit:10 }}
{% endraw %}
&lt;/section&gt;

</code></pre>

<div class="tutorial">
<p>Example post content.</p>
</div>

<pre><code>
---
title: Searching for a turquoise signal
link: searching-for-a-turquoise-signal
published_date: 2025-02-25 11:31
tags: photos 
---

[![imagename](url)](url)

A really awesome caption

</code></pre>

<h4 id="jekyll">Para Jekyll, <em style="font-height:12px;">minha versão</em> <a href="#">↑</a></h4>
Peço desculpas, e mais uma vez lembro que eu não tenho grandes conhecimentos em Jekyll, Liquid, HMTL e CSS. A maior parte do que fiz foi usando uma IA (sim, malz) e comparando com o código do Bruce para ver se estava fazendo sentido. Claro, publicando e vendo como ficava.  

Deu certo, como podem [ver aqui]({{ site.url }}/fotolog "meu fotolog"). Testei tudo num outro projeto que eu tenho, copiando e colocando os códigos e também fui vencedor nessa tentativa.  

É muito provável que tenham configurações excessivas no HMTL/CSS, peço desculpas. Se tiver dicas de como melhorar, [me avisa](mailto:pedro@dalbo.me?subject=Galeria em Jekyll "Onde falar comigo") que a gente atualiza aqui e dá o crédito,  claro.  

Se quiserem podemos conversar, mas não posso prometer resolver nada. :'(

<div class="tutorial">
<p>Um prévia da imagem sem corte, num <i>grid</i> em linhas, três imagens por linha. A data fica no topo, a direita e todo o conteúdo da postagem não aparece. Você clica na imagem ou na data e vai para a postagem em si. Abaixo temos a legenda da foto (não é um link).</p>

<p>No meu site, todos as postagens estão no mesmo feed, a separação acontece num plugin que gera um arquivo <em>*.yml</em> com a lista de cada conjunto de postagens e assim tenho um único feed, mas páginas diferentes para textos e fotos.</p>

<p>Essa configuração eu montarei e coloco aqui depois.<br/>
Uso um template para a postagem das fotos.</p>
</div>

<pre><code>
---
title: 
date: 
image: url-da-imagem
caption: "Legenda da imagem"
---
Corpo da postagem com a imagem e textos.

</code></pre>

<div class="tutorial">
<p>No corpo da postagem você pode usar a configuração e apresentação pelo CSS da forma que quiser. O importante é que tenha o campo <em>image</em> e <em>caption</em> no Front Matter.<br/>
No <em>image</em> você coloca a url da imagem  que vai aparecer na galeria e em <em>caption</em> a legenda que vai abaixo da imagem.</p>

<p>Na pasta <i>_layout</i> você coloca o código a seguir que montará a página da galeria (o Fotolog).<br/>
Fique atento que eu não apresento nenhuma configuração <i>Liquid</i> de paginação.</p>
<p>Se você tem paginação no seu site, coloque esse código no arquivo com o código da galeria.</p>
</div>

<pre><code>
&lt;section class="gallery">
&lt;ul class="embedded album-post">
  &lt;li>{% raw %}
    &lt;a class="album-data" href="{{ post.url }}">{{ post.date | date: "%d/%m/%Y" }}</a&gt;
      &lt;div class="image-wrapper">
      &lt;a href="{{ post.url }}">&lt;img src="{{ post.image | relative_url }}" title="{{ post.title }}"></a></div&gt;
      &lt;p>{{ post.caption }}</p&gt;{% endraw %}
  </li&gt;
</ul&gt;
</section&gt;

</code></pre>

<div class="tutorial">
<p>O CSS que usei para a galeria ficou da seguinte forma.</p>
</div>

<pre><code>
.gallery {
  width: 100%;
  /* Esse padding reserva o espaço que as legendas "fantasmas" ocupam */
  padding-bottom: 100px; 
  display: block;
}
/* 1. O CONTAINER DA GRADE */
.gallery ul.embedded.album-post {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  column-gap: 2rem;
  row-gap: 90px; /* Aumentamos para dar espaço para legendas grandes */
  list-style: none;
  padding: 0;
  margin: 0;
}

/* 2. CADA POST */
.gallery ul.embedded.album-post > li {
  display: grid;
  /* Trava a Data e a Legenda, e deixa a Foto no espaço flexível */
  grid-template-rows: auto 1fr auto; 
  align-items: end; /* Força a foto a sentar na linha de base */
}

/* 3. A DATA */
.gallery ul.embedded.album-post > li a.linkdata {
  align-self: start; /* Fixa a data no topo */
  margin-bottom: 20px; /* DISTÂNCIA DATA -> FOTO */
  display: block;
}

/* 4. A FOTO (O wrapper) */
.image-wrapper {
  width: 100%;
  display: flex;
  align-items: flex-end; /* Base da foto nivelada */
  min-height: 1px; /* Hack para manter o cálculo de altura ativo */
}

.image-wrapper img {
  width: 100%;
  height: auto;
  display: block;
}

/* 5. A LEGENDA (A grande culpada) */
.caption {
  margin-top: 10px; /* Distância da base da foto para a legenda */
  height: 0; /* MÁGICA: A legenda não ocupa espaço no cálculo da altura do post */
  min-height: 0;/* O texto vai "transbordar" para baixo sem empurrar a imagem */
  text-align: left;
}
/* FINAL DO MEU FOTOLOG */

</code></pre>

Espero muito que esse _tutorial_ seja de ajuda para alguém. Eu apanhei bastante para montar na época, mesmo me parecendo um pouco poluído tem funcionado e fico feliz em poder compartilhar.  

Como eu comentei lá no alto, a gente pode [trocar uma ideia](mailto:pedro@dalbo.me?subject=Galeria em Jekyll "Onde falar comigo").  


<h4 id="blogger">Para Blogger <a href="#" >↑</a></h4>
A partir dessa minha ideia o William montou seu próprio Fotolog e divulgou como ele o fez.  

<ul>
<li>Visitem <a href="https://prazerwillian.blogspot.com/p/fotolog.html">o Fotolog dele</a> e</li>
<li>Vejam <a href="https://prazerwillian.blogspot.com/2026/02/fotolog-no-blogger.html">como fazer seu fotolog no Blogger</a>.</li>
</ul>