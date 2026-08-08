---
layout: post
type: texto
title: "Das vantragens do Jekyll"
date: 2026-08-23 12:00:00
tags:
 - beda, bewa e afins
 - a vida, o universo e tudo mais
 - informática
 - metablog
published: false
---
Esses dias eu passaei algumas horas melhorando o fluxo de trabalho para algumas páginas aqui do blog, principalmete o [BLOGROL](/blogrol), [DICAS DO BLOG](/dicas-do-blog) e [BARRAS](/barras)<a href="#1"><sup id="1-1">1</sup></a>. Mas o qeu eu fiz exatamente?   

Essas páginas (barras, blogrol, dicas do blog) são no final de contas listas que se repetem na forma de apresentar, mas com conteúdos distintos e pelo que entendi o [Liquid](https://shopify.github.io/liquid/) é funciona muito bem com combinando de listas repetidas, principalmente quando os conteúdos vêm de arquivos de dados. 

> A linguagem Liquid é uma linguagem de para a criação de templates usada para gerar conteúdo dinâmico (por exemplo, em sites e e-commerces, um **jardim digital** ou um **blog**). Escrevendo uma estrutura (com HTML), com tags do Liquid para repetir trechos, decidir quando mostrar algo (com condições) e preencher com dados vindos de algum lugar.

<blockquote class="fleabag">Aqui vale um alerta. Não é apenas o <b>Liquid</b> que resolve tudo isso, outras ferramentas do Jekyll atuam, mas este texto é focado na funcionalidade do <b>Liquid</b> e por isso não estou levantando outros pontos.</blockquote>

O _Liquid_ é usado, em sites mais simples e modelos em _Jekyll_, principalmente para montar a o arquivo `blog.html` e `post.html` que são os arquivos que ficam na pasta `_layouts` e são os temas para montar, no meu site, a página principal do [BLOG](/blog) e as páginas exclusivas de cada postagem.  

<blockquote class="fleabag">Só demorou um pouco para eu perceber que eu poderia montar <b>templates</b> para outras páginas a partir do <b>Liquid</b>.</blockquote>

Para cada uma dessas páginas pense que cada item era um conjunto de **HTML+conjunto de texto** e pensemos que conforma a lista aumenta, fica mais complexa a visualização do arquivo da página fica e pior para editar. E quando a lista cresce, mexer na estrutura vira um trabalho, a mesma estrutura fica espalhada e você precisa mexer em vários lugares.  

Uma das primeiras páginas que eu fiz isso foi a de [REGISTRO DE ALTERAÇÕES](/registro-de-alteracoes)<a href="#2"><sup id="2-1">2</sup></a> veja a página e perceba que colocar isso tudo em html item a item tornava uma atividade hércula. Fora que se eu precisasse alterar algum texto tinha que ficar lendo tudo com várias `tags html` no meio. Em textos mais curtos de postagens disso fica menos complicado, mesmo que o texto seja longo, mas em uma página cheia de repetição de código sua mente fica maluca. E aí que entra o _Liquid_ e os arquivos de dados `.yml`.  

O código da página é, hoje, algo já feito com _liquid_. Vou ignorar `front matter` do _Jekyll_ e apresentar direto a parte `html+liquid`, vamos deixar isso para outro dia.

<blockquote class="fleabag">Esse texto está com cara de que não ficará pequeno, tá bem técnico. Espero que tenham pique para continuar.</blockquote>

```{% raw %}
<div class="timeline">
  <ul>
    {% assign ano_vigente = "" %}
    {% for item in site.data.registro-alteracoes %}
      
    {% if item.ano != ano_vigente %}
 <li><h4>Alterações em {{ item.ano }}</h4></li>
     {% assign ano_vigente = item.ano %}
    {% endif %}
 <li>
<h5 id="{{ item.data_id }}">{{ item.data_texto }}</h5>
        
{% for entrada in item.entradas %}
  {% assign tags_ordenadas = entrada.tags | sort_natural %}
  {% for tag in tags_ordenadas %}
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
{% endraw %}
```
Se você forem na página do [REGISTRO DE ALTERAÇÕES](/registro-de-alteracoes) verão quão extensa é a página e não faz sentido construir isso manualmente emHTML item a item. Mas a realidade é que esse _template_ lê os dados presentes no arquivo `registro-alteracoes.yml`, que fica na pasta `_data`, e usa o Liquid para substituir as `tags liquid` pelas informações do arquivo `.yml`.  

Aqui vou colocar parte do arquivo.

```{% raw %}
- ano: "2026"
  data_id: "2026-08-06"
  data_texto: "06 de agosto"
  entradas:
    - tags: ["css","acabamento","html"]
      texto: |
       Estruturei a página [DICAS DO BLOG](/dicas-do-blog) utilizando um `template liquid` e um arquivo `dicas_do_blog.yml` com a lista de tutoriais para que o arquivo `dicas-do-blog.md` fique mais limpo. Assim eu coloco a ordem alfabética pelo `liquid` e não preciso ficar me preocupando com isso ao criar as entradas. Muito mais fácil.  

- ano: "2026"
  data_id: "2026-08-05"
  data_texto: "05 de agosto"
  entradas:
    - tags: ["css","acabamento","html"]
      texto: |
       Criei uma nova classe `.rodape` para notas de rodapé no final de postagens.

- ano: "2026"
  data_id: "2026-08-03"
  data_texto: "03 de agosto"
  entradas:
    - tags: ["liquid", "acabamento"]
      texto: | 
       Fiz uma alteração e uma gracinha com o link para os comentários das postagens na página principal do blog. Não tem mais apenas a frase _vamos conversar_, dependendo da quantidade de mensagens ficou  
        - nenhuma mensagem: _vamos conversar..._;
        - 1 a 3 mensagens: _tem um bate-papo rolando, vem participar..._;
        - 4 ou mais mensagens: _a conversa parece boa, vai ficar de fora?_.
    - tags: ["html","liquid", "acabamento"]
      texto: |
       Configurei no `head` do site as `og tags` para que as configurações de compartilhamento permitam que as informações apareçam definidas corretamente.  
       Deu um certo trabalho, mas fiquei satisfeito com o resultado. 

- ano: "2026"
  data_id: "2026-08-01"
  data_texto: "01 de agosto"
  entradas:
    - tags: ["html", "css"]
      texto: |
       Criei o arquivo `banner-beda2026.css` para colocar os estilos do banner do BEDA 2026. A ideia foi atualizar o banner com as cores do site do evento e colocar um ícone exclusivo, mas sem _poluir_ o arquivo `css` principal.

- ano: "2026"
  data_id: "2026-07-30"
  data_texto: "30 de julho"
  entradas:
    - tags: ["página", "Jekyll", "liquid"]
      texto: |
       Criei a página exclusiva para as postagens que entrarão no BEDA 2026 que o [ENTREBLOGS](https://entreblogs.com.br/) organizou. A página é a [BEDA 2026](/BEDA-2026).
       
- ano: "2026"
  data_id: "2026-07-29"
  data_texto: "29 de julho"
  entradas:
    - tags: ["acabamento"]
      texto: |
       Alterei o contorno da foto do cabeçalho do site. Deixei com os cantos arredondados, simétricos sim, mas não entre os dois eixos 😬. 
    - tags: ["acabamento"]
      texto: |
       Atualizei o arquivo `tema-junino.css` com novas fontes para os títulos, melhores as proporções do chapéu e sanfona para as novas fontes.  
       Atualizei a página do [TEMA JUNINO](/dicas-do-blog/tema-junino "página que apresenta o tema junino").
{% endraw %}
```

Vejam a diferença.  

Editar o arquivo `.yml` é muito mais simples, eu não me precocupo em ficar adicionando `tags html` eu preencho um arquivo estruturado e formatado em Markdown, que é uma linguagem para formatação de texto mais simples. Depois o _Jekyll_ ao ler o `template liquid` monta o HTML final, e quando aparece texto em Markdown ele é convertido (como no meu exemplo com markdownify). Aí o CSS entra só para deixar tudo com o visual que eu defini.. Além disso, imagina a compliqueira que seria digitar o texto todo junto com as `tags`, vai por mim, a gente fica maluco...

A ideia aqui não é ensinar a usar o _Liquid_, nem eu mesmo sei ainda, estou aprendendo. Mas eu queria trazer essa maravilha porque fiquei animado demais quando terminei de montar essas páginas e vi o quão mais simples é agora atualiza-las.  

Ah.. Tem outra coisa.  

_Liquid_ não é a única linguagem _templates_, é a usada no _Jekyll_. Se você usar outro gerador de site, como o Hugo, ele vai usar outra linguagem, mas a ideia de **template+dados** continua muito parecida, e isso quebra um galho.

{% include banner-beda-2026.html %}

<aside class="rodape"><div id="1">1. A página BARRAS fica ali no rodapé e o link dela está em <code>/...</code> criativo, não?😁. <a href="#1-1" style="font-size: 14px">&#8629;</a></div>
<div id="2">2. A página de REGISTRO DE ALTERAÇÕES fica no rodapé no rodapé, o link está em <code>2005-2026</code>. <a href="#2-1" style="font-size: 14px">&#8629;</a></div>
</aside>