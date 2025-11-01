---
layout: paginas
title: Dicas do blog
excerpt: Um caminho onde eu vou colocar algumas coisas que eu fiz aqui e acho que vale compartilhar.
permalink: "/dicas-do-blog-cp"
---
<h1><span aria-hidden="true">|</span>Dicas<span class="h1-menor"> do blog</span> </h1>

Se você chegou até aqui pode ser que eu tenha algo bacana a dizer que possa ajudar a encontrar mais fácil algum processo que eu já fiquei tentando antes e sofri para resolver.  

Acho que, no final, isso é a antiga web.  

<aside class="aviso">Gente, fica o aviso. Eu não manjo muito (ou nada) de jekyll, markdown ou liquid. O que coloco aqui está exatamente como funciona no meu site (ou no caso do Bruce, como ele postou e não tenho como testar no Bearblog). Use como ponto de partida.</aside>  

<hr>
  
Minha primeira dica é uma possibilidade de criar uma galeira de fotos, uma capa principal para mostrar as imagens e a partir dela levar para a postagem completa.  

Temos algo como um fotolog, podemos dizer, se você é _das antigas_. Eu achei isso bem legal e [tenho aqui no site]({{ site.url }}/fotolog "meu fotolog").  

Peguei a ideia do [Bruce Beaumont](https://bruceblog.bearblog.dev/a-lazy-kind-of-photo-gallery-for-bear-blog/ "site do Bruce"), quando ele ensinou a montar a galeria em seu site pessoal. Mandei uma mansagem para ele dizendo que colocaria aqui como um tutorial e tive seu "ok".  

A seguir, eu vou colar o código que o Bruce disponibilizou originalmente no site pessoal dele, uma solução para o Bearblog. Depois eu coloco a minha adaptação para sites em Jekyll.  

Espero que isso facilite a vida de alguém por aí.
<ul>
<li><a href="#bearblog">Para Bearblog</a>,<em> o original</em>;</li>
<li><a href="#jekyll">Para Jekyll</a>,<em> minha versão</em>.</li>
</ul>
<h2 id="bearblog">Para Bearblog, <em style="font-height:12px;">o original</em> <a href="#" >↑</a></h2>
Peço desculpas, não traduzi o conteúdo dele, sigo como no original, mas nada que um _tradutor_ da internet não resolva.  

<pre><code class="highlight">
Thumbnails with no cropping, in gridded rows, three per row, and just the title showing. <i>chef's kiss</i>.

The date is hidden and so is all other post content except the first item which is an image. You can click directly on the thumbnail to view full size, or click on the caption to go to the post itself. I might change it so that the image click brings you to the post instead, not sure. Anyways.

I use a template for new posts, this adds the tag by default.

<hr style="text-align: left; width: 33%; margin-left: 0;">
---
title:  
published_date:  
tags: photos
---

[![scanname](link)](link)

caption

<hr style="text-align: left; width: 33%; margin-left: 0;">
I can then drag and drop the photo into the prompt. CopyPaste the url to replace the two "(link)" bits. Hit publish and its done.

The photo must be the first item in the post. Any other content will be hidden on the gallery page. This is also styled on just the gallery page, if you wanted this to be universal you could add it to your theme.

I'm no expert in CSS or html so there's likely some more nonfunctional bits that can be cut out. If you find some let me know!

Thanks for reading, have a great day.

-Bruce

<hr style="text-align: left; width: 33%; margin-left: 0;">
Page content

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

<hr style="text-align: left; width: 33%; margin-left: 0;">
&lt;section&gt; class="gallery">
{% raw %}
{{ posts | tag:photos | content:True | limit:10 }}
{% endraw %}
&lt;/section&gt;

<hr style="text-align: left; width: 33%; margin-left: 0;">
Example post content
{% raw %}
---
title: Searching for a turquoise signal
link: searching-for-a-turquoise-signal
published_date: 2025-02-25 11:31
tags: photos 
---

[![imagename](url)](url)

A really awesome caption
{% endraw %}
<hr style="text-align: left; width: 33%; margin-left: 0;">
</code></pre>

<h2 id="jekyll">Para Jekyll, <em style="font-height:12px;">minha versão</em> <a href="#">↑</a></h2>
Peço desculpas, e mais uma vez lembro que eu não tenho grandes conhecimentos em Jekyll, Liquid, HMTL e CSS. A maior parte do que fiz foi usando uma IA (sim, malz) e comparando com o código do Bruce para ver se estava fazendo sentido. Claro, publicando e vendo como ficava.  

Deu certo, como podem [ver aqui]({{ site.url }}/fotolog "meu fotolog"). Testei tudo num outro projeto que eu tenho, copiando e colocando os códigos e também fui vencedor nessa tentativa.  

É muito provável que tenham configurações excessivas no HMTL/CSS, peço desculpas. Se tiver dicas de como melhorar, [me avisa](mailto:pedro@dalbo.me?subject=Galeria em Jekyll "Onde falar comigo") que a gente atualiza aqui e dá o crédito,  claro.  

Se quiserem podemos conversar, mas não posso prometer resolver nada. :'(

<pre><code class="highlight">
Um prévia da imagem sem corte, num <i>grid</i> em linhas, três imagens por linha. A data fica no topo, a direita e todo o conteúdo da postagem não aparece. Você clica na imagem ou na data e vai para a postagem em si. Abaixo temos a legenda da foto (não é um link).

No meu site, todos as postagens estão no mesmo feed, a separação acontece num plugin que gera um arquivo <em>*.yml</em> com a lista de cada conjunto de postagens e assim tenho um único feed, mas páginas diferentes para textos e fotos.

Essa configuração eu montarei e coloco aqui depois.
Uso um template para a postagem das fotos.

<hr style="text-align: left; width: 33%; margin-left: 0;">  
---
title: 
date: 
image: url-da-imagem
caption: "Legenda da imagem"
---
Corpo da postagem com a imagem e textos.

<hr style="text-align: left; width: 33%; margin-left: 0;">
No corpo da postagem você pode usar a configuração e apresentação pelo CSS da forma que quiser. O importante é que tenha o campo <em>image</em> e <em>caption</em> no Front Matter.
No <em>image</em> você coloca a url da imagem  que vai aparecer na galeria e em <em>caption</em> a legenda que vai abaixo da imagem.

O layout da página da galeria (o Fotolog) você coloca a seguir.
Fique atento que eu não apresento nenhuma configuração <i>Liquid</i> de paginação.
Se você tem paginação no seu site, coloque esse código entre a configuração <i>Liquid</i>.

<hr style="text-align: left; width: 33%; margin-left: 0;">
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

<hr style="text-align: left; width: 33%; margin-left: 0;">
O CSS que usei para a galeria ficou da segiunte forma.

<hr style="text-align: left; width: 33%; margin-left: 0;">
/* COMEÇO DO MEU FOTOLOG */
/* Creditos para Bruce Beaumont.
No final mudou bastante o código, mas foi dele toda a inspiração*/

/* Gallery styles */
.gallery ul.embedded.album-post {
 display: grid;
 grid-template-columns: repeat(3, 1fr);
 gap: 1em;
 list-style: none;
 padding: 0;
 margin: 0;
}

.gallery ul.embedded.album-post > li {
 display: flex;
 flex-direction: column;
 justify-content: flex-start; /* alinhamento pelo topo */
 padding: 0;
 margin: 0;
 height: 100%;
}

.gallery ul.embedded.album-post > li a {
 display: block;
 color: inherit;
}

.gallery .album-data {
 font-size: 0.8em;
 padding: 0.25em 0;
 color: var(--color-data);
 margin-bottom: 0.5em;
 display: flex;
 justify-content: flex-start;
 align-items: flex-start;
}

.image-wrapper {
 width: 100%;
 display: flex;
 justify-content: center;
}

.image-wrapper img {
 width: 100%;
 height: auto;
 object-fit: contain;
 display: block;
}

.caption {
 font-style: italic;
 font-size: 0.9em;
 text-align: left;
 padding: 0.4em 0;
 margin: 0;
 margin-top: 5px;
}
/* FINAL DO MEU FOTOLOG */

<hr style="text-align: left; width: 33%; margin-left: 0;">
</code></pre>

Espero muito que esse _tutorial_ seja de ajuda para alguém. Eu apanhei bastante para montar na época, mesmo me parecendo um pouco poluído tem funcionado e fico feliz em poder compartilhar.  

Como eu comentei lá no alto, a gente pode [trocar uma ideia](mailto:pedro@dalbo.me?subject=Galeria em Jekyll "Onde falar comigo").