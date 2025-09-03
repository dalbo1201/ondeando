---
layout: paginas
title: Dicas do blog
excerpt: Um caminho onde eu vou colocar algumas coisas que eu fiz aqui e acho que vale compartilhar.
---
<h1><span aria-hidden="true">|</span>Dicas<span class="h1-menor"> do blog</span> </h1>
<section class="texto-geral">
<p>Se você chegou até aqui pode ser que eu tenha algo bacana a dizer que possa ajudar a encontrar mais fácil algum processo que eu já fiquei tentando antes e sofri para resolver.</p>
<p>Acho que, no final, isso é a antiga web.</p>
<aside class="aviso">Gente, fica o aviso. Eu não manjo muito (ou nada) de jekyll, markdown ou liquid. O que coloco aqui está exatamente como funciona no meu site (ou no caso do Bruce, como ele postou e não tenho como textar no Bearblog). Use como ponto de partida.</aside>
<br/>
<hr>
<p>Minha primeira dica é uma possibilidade de criar uma galeira de fotos, uma capa principal para mostrar as imagens e a partir dela levar para a postagem completa.</p>
<p>Temos algo como um fotolog, podemos dizer, se você é <i>das antigas</i>. Eu achei isso bem legal e <a href="{{ site.url }}/fotolog" title="meu fotolog">tenho aqui no site</a>.</p>
<p>Peguei a ideia do <a href="https://bruceblog.bearblog.dev/a-lazy-kind-of-photo-gallery-for-bear-blog/" title="site do Bruce">Bruce Beaumont</a>, quando ele ensinou a montar a galeria em seu site pessoal. Mandei uma mansagem para ele dizendo que colocaria aqui como um tutorial e tive seu "ok".</p>

<p>A seguir, eu vou colar o código que o Bruce disponibilizou originalmente no site pessoal dele, uma solução para o Bearblog. Depois eu coloco a minha adaptação para sites em Jekyll.</p>

<p>Espero que isso facilite a vida de alguém por aí.</p>
<ul>
<li><a href="#bearblog">Para Bearblog</a>,<em> o original</em>;</li>
<li><a href="#jekyll">Para Jekyll</a>,<em> minha versão</em>.</li>
</ul>
<h3 id="bearblog">Para Bearblog, <em style="font-height:12px;">o original</em></h3>
<p>Peço desculpas, não traduzi o conteúdo dele, sigo como no original, mas nada que um <i>tradutor</i> da internet não resolva.</p>
<code class="highlight">
<p>Thumbnails with no cropping, in gridded rows, three per row, and just the title showing. <i>chef's kiss</i>. The date is hidden and so is all other post content except the first item which is an image. You can click directly on the thumbnail to view full size, or click on the caption to go to the post itself. I might change it so that the image click brings you to the post instead, not sure. Anyways.</p>
<p>I use a template for new posts, this adds the tag by default.</p>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
---<br/>
title:  <br/>
published_date:  <br/>
tags: photos<br/>
---<br/>
<br/>
[![scanname](link)](link)<br/>
<br/>
caption<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
I can then drag and drop the photo into the prompt. CopyPaste the url to replace the two "(link)" bits. Hit publish and its done.<br/>
<br/>
The photo must be the first item in the post. Any other content will be hidden on the gallery page. This is also styled on just the gallery page, if you wanted this to be universal you could add it to your theme.<br/>
<br/>
I'm no expert in CSS or html so there's likely some more nonfunctional bits that can be cut out. If you find some let me know!<br/>
<br/>
Thanks for reading, have a great day.<br/>
<br/>
-Bruce<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
Page content<br/>
&lt;style><br/>
/* Credit goes to Sylvia and Robert, I just tinkered with it. Also thanks to Jedda for the initial inspiration.*/<br/>
/* Gallery styles */<br/><br/>
.gallery { /* Gallery width */<br/>
  width: 90%;<br/>
  position: relative;<br/>
}<br/>
<br/>
.gallery ul.embedded.blog-posts {<br/>
  display: grid;<br/>
  grid-template-columns: repeat(3, 1fr);<br/>
  gap: 2em; /* Space in between thumbnails */<br/>
  justify-content: center;<br/>
  padding: 3em 0; /* Space above & below the gallery */<br/>
}<br/>
<br/>
/* Box containing post content */<br/>
.gallery ul.embedded.blog-posts > li {<br/>
  width: 100%;<br/>
  height: min-content;<br/>
  font-size: 1em;<br/>
  display: flex;<br/>
  flex-direction: row; /* Change to "row-reverse" to display post title on left & date on right */<br/>
  flex-wrap: wrap-reverse; /* Change to "wrap" to display post title & date above image */<br/>
  justify-content: space-between; /* Change to "center" to center post title or date */<br/>
  align-items: baseline;<br/>
}<br/>
<br/>
.gallery ul.embedded.blog-posts > li div p:first-child {<br/>
  margin-top: 0; /* Remove extra space above content */<br/>
  margin-bottom: .5em; /* Space in between image and post title */<br/>
}<br/>
<br/>
/* Post title */<br/>
.gallery ul.embedded.blog-posts > li > a {<br/>
  /* Add display: none; to hide post title */<br/>
}<br/>
<br/>
/* Date */<br/>
.gallery ul.embedded.blog-posts > li span:has(> i time) {<br/>
  /* Add display: none; to hide date */<br/>
   display: none;<br/>
}<br/>
<br/>
/* Post body */<br/>
.gallery ul.embedded.blog-posts > li > div {<br/>
  flex-basis: 100%;<br/>
}<br/>
<br/>
.gallery ul.embedded.blog-posts > li > div > p img {<br/>
  object-fit: contain;<br/>
  width: 100%; /* Resize to desired width */<br/>
  height: 100%; /* Resize to desired height */<br/>
}<br/>
<br/>
.gallery ul.embedded.blog-posts > li > div > p:nth-child(n+2) {<br/>
  display: none; /* Hides content after image */<br/>
}<br/>
</style><br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
<section&gt; class="gallery"><br/>
<br/>
{ { posts | tag:photos | content:True | limit:10 }}<br/>
<br/>
</section&gt;<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
Example post content<br/>
<br/>
---<br/>
title: Searching for a turquoise signal<br/>
link: searching-for-a-turquoise-signal<br/>
published_date: 2025-02-25 11:31<br/>
tags: photos <br/>
---<br/>
<br/>
[![imagename](url)](url)<br/>
<br/>
A really awesome caption<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;"><br/>
</code>

<h3 id="jekyll">Para Jekyll, <em style="font-height:12px;">minha versão</em> <a href="#" class="linkcab">↑</a></h3>
<p>Peço desculpas, e mais uma vez lembro que eu não tenho grandes conhecimentos em Jekyll, Liquid, HMTL e CSS. A maior parte do que fiz foi usando uma IA (sim, malz) e comparando com o código do Bruce para ver se estava fazendo sentido. Claro, publicando e vendo como ficava.</p>
<p>Deu certo, como podem <a href="{{ site.url }}/fotolog" title="meu fotolog">ver aqui</a>. Testei tudo num outro projeto que eu tenho, copiando e colocando os códigos e também fui vencedor nessa tentativa.</p>
<p>É muito provável que tenham configurações excessivas no HMTL/CSS, peço desculpas. Se tiver dicas de como melhorar, <a href="mailto:pedro@dalbo.me?subject=Galeria em Jekyll" title="Onde falar comigo">me avisa</a> que a gente atualiza aqui e dá o crédito,  claro.</p>
<p>Se quiserem podemos conversar, mas não posso prometer resolver nada. :'(</p>
<code class="highlight">
<p>Um prévia da imagem sem corte, num <i>grid</i> em linhas, três imagens por linha. A data fica no topo, a direita e todo o conteúdo da postagem não aparece. Você clica na imagem ou na data e vai para a postagem em si. Abaixo temos a legenda da foto (não é um link).</p>
<p>No meu site, todos as postagens estão no mesmo feed, a separação acontece num plugin que gera um arquivo <em>*.yml</em> com a lista de cada conjunto de postagens e assim tenho um único feed, mas páginas diferentes para textos e fotos.</p>
<p>Essa configuração eu montarei e coloco aqui depois.</p>
<p>Uso um template para a postagem das fotos.</p>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
---<br/>
title: <br/>
date: <br/>
image: url-da-imagem<br/>
caption: "Legenda da imagem"<br/>
---<br/>
Corpo da postagem com a imagem e textos.<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<p>No corpo da postagem você pode usar a configuração e apresentação pelo CSS da forma que quiser.</p>
<p>O importante é que tenha o campo <em>image</em> e <em>caption</em> no Front Matter. No <em>image</em> você coloca a url da imagem  que vai aparecer na galeria e em <em>caption</em> a legenda que vai abaixo da imagem.</p>
<p>No layout da página da galeria você coloca a seguinte estrutura. Fique atento que eu não apresento nenhuma configuração <i>Liquid</i> de paginação. Se você tem paginação no seu site, coloque esse código entre a configuração <i>Liquid</i>.</p>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
&lt;section class="gallery"><br/>
  &lt;ul class="embedded album-post"><br/>
    &lt;li><br/>
      &lt;a href="{ { post.url }}"><br/>
         &lt;div class="album-data">{ { post.date | date: "%d/%m/%Y" }}</div&gt;</a&gt;<br/>
         &lt;div class="image-wrapper"><br/>
          &lt;a href="{ { post.url }}"><img src="{{ post.image | relative_url }}" title="{{ post.title }}"></a><br/>
          </div&gt;<br/>
      &lt;p>{ { post.caption }}</p&gt;<br/>
  </li&gt;<br/>
  </ul&gt;<br/>
</section&gt;<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<p>O CSS que usei para a galeria ficou da segiunte forma.</p>
<hr style="text-align: left; width: 33%; margin-left: 0;">
<br/>
/* COMEÇO DO MEU FOTOLOG */<br/>
/* Creditos para Bruce Beaumont. No final mudou bastante o código, mas foi dele toda a inspiração*/<br/>
/* Gallery styles */<br/>
.gallery ul.embedded.album-post {<br/>
  display: grid;<br/>
  grid-template-columns: repeat(3, 1fr);<br/>
  gap: 1em;<br/>
  list-style: none;<br/>
  padding: 0;<br/>
  margin: 0;<br/>
}<br/>
<br/>
.gallery ul.embedded.album-post > li {<br/>
  display: flex;<br/>
  flex-direction: column;<br/>
  justify-content: flex-start; /* alinhamento pelo topo */<br/>
  padding: 0;<br/>
  margin: 0;<br/>
  height: 100%;<br/>
}<br/>
<br/>
.gallery ul.embedded.album-post > li a {<br/>
  display: block;<br/>
  color: inherit;<br/>
}<br/>
<br/>
.gallery .album-data {<br/>
  font-size: 0.8em;<br/>
  padding: 0.25em 0;<br/>
  color: var(--color-data);<br/>
  margin-bottom: 0.5em;<br/>
  display: flex;<br/>
  justify-content: flex-start;<br/>
  align-items: flex-start;<br/>
}<br/>
<br/>
.image-wrapper {<br/>
  width: 100%;<br/>
  display: flex;<br/>
  justify-content: center;<br/>
}<br/>
<br/>
.image-wrapper img {<br/>
  width: 100%;<br/>
  height: auto;<br/>
  object-fit: contain;<br/>
  display: block;<br/>
}<br/>
<br/>
.caption {<br/>
  font-style: italic;<br/>
  font-size: 0.9em;<br/>
  text-align: left;<br/>
  padding: 0.4em 0;<br/>
  margin: 0;<br/>
  margin-top: 5px;<br/>
}<br/>
<br/>
/* Ajustes para telas menores */<br/>
@media {<br/>
.gallery ul.embedded.album-post {<br/>
 grid-template-columns: 1fr;<br/>
}<br/>
}<br/>
/* FINAL DO MEU FOTOLOG */<br/>
<br/>
<hr style="text-align: left; width: 33%; margin-left: 0;">
</code>
<p>Espero muito que esse <i>tutorial</i> seja de ajuda para alguém. Eu apanhei bastante para montar na época, mesmo me parecendo um pouco poluído tem funcionado e fico feliz em poder compartilhar.</p>
<p>Como eu comentei lá no alto, a gente pode <a href="mailto:pedro@dalbo.me?subject=Galeria em Jekyll" title="Onde falar comigo">trocar uma ideia</a>.</p>
</section>