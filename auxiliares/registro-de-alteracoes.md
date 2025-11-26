---
layout: paginas
title: Registro de Alterações
description: registro das modificações que faço neste pequeno espaço da internet.
permalink: "/registro-de-alteracoes"
---
<h1><span aria-hidden="true">|<span class="h1-menor">o </span></span>Registro<span class="h1-menor"> de alterações</span></h1>

O famoso [Changelog<sup>[en]</sup>](https://indieweb.org/release_notes) é simplesmente um resumo das alterações <del> consideradas mais pertinentes</del> realizadas aqui neste meu pequeno canto da internet.
<hr>
<h3>Alterações em 2025</h3>
<h4>23 de novembro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span>  
Corrigi o CSS e o HTML do elemento <code>blockquote</code> quando numa postagem <code>type:frase</code> que não estava usando as alturas de texto corretamente por aparecer um <code><p></code> a mais na geração do site.  
Fiz outra pequenas mudanças em tamanho de textos e espaçamentos para tentar melhorar o visual.  
Espero que isso tenha sido resolvido realmente...  

<h4>21 de novembro</h4>
<span class="tag-reg">jekyll</span>  
Alterei o campo <code>author</code> no <code>_config.yml</code> para **dalbo1201**, afinal de contas aqui na internet esse é meu usuário padrão, me parece fazer mais sentido. Sei lá...

<h4>20 de novembro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">html</span>  
Adicionei nas páginas [etiquetas (Tags)](/tags) e do [Arquivo](/arquivo) um aviso sobre o ícone &#x1F4F7; ser relacionado a postagens do [Fotolog](/fotolog).  
Adicionei essa explicação também no [Colofão](/colofao), me pareceu fazer sentido.

<h4>14 de novembro</h4>
<span class="tag-reg">liquid</span>  
Criei uma série de condicionantes para permitir a apresentação de datas de atualização das postagens.  
O código identifica se a postagem tem datas de atualização e, se possuir, usará a data mais recente para <i>jogar</i> a postagem para o topo do blog. A exibição das datas começa pela data original e depois segue em <i>loop</i> reunindo todas as datas de atualização em ordem cronológica, incluindo <code>,</code> e <code>e</code> quando necessário.  
Para uma melhor apresentação do código nos arquivos <code>post.html</code> e <code>foto.html</code> criei um arquivo separado <code>post-dates.html</code> usando o <code><code>{&#37; include post-dates.html &#37;}</code></code> para incluir as atualizações nos arquivos do <code>_layouts</code>.

<h4>09 de novembro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span>  
Alterei a apresentação da caixa de avisos que tenho por aqui. Antes era o texto com uma borda criando apenas uma caixa. Agora tem um ícone de "informação" e o texto ao lado, a borda da caixa continua, agora arredondada.

<h4>06 de novembro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">html</span>  
Troquei o favicon. Anteriormente era a foto do site, agora temos um desenho - peguei uma das imagens do avatar criado pela Meta no WhatsApp. Mal dá pra ver, mas ficou engraçadinho. Em algum momento pretendo criar uma página _sobre_ e colocarei o avatar junto com a foto.  
<span class="tag-reg">html</span>  
Atualizei os links que levam ao [Lerama](https://lerama.pcdomanual.com/?category=blogs&tag). Com a [união dos diretórios de <i>Newsletteres</i> e de Blogs](https://manualdousuario.net/lerama-diretorio-newsletters-brasileiras-fusao/) pelo [@Manual do Usuário](https://manualdousuario.net/) coloquei os links com o filtro do Lerama para a página que apresenta apenas os blogs. Se houver interesse do leitor de visualizar as <i>newsletteres</i> lá tem como mudar. Fiz isso [porque o intuito aqui é valorizar os blogs](/blog/porque-um-blog-e-nao-uma-newsletter), esses espaços pessoais esquecidos que tentamos reviver.  
Nada contra newsletteres.

<h4>01 de novembro</h4>
<span class="tag-reg">css</span>  
Retirei das configurações do _dark mode_ as variáveis <code>quote-transparency</code>, <code>code-background-transparency</code> afinal não preciso repetir se são as mesmas do modo claro. Aproveitei e adicionei a varável <code>font-geral</code> para no futuro poder trocar as fontes mais facilmente. _Ideias para o futuro sendo matutadas..._  

<h4>25 de outubro</h4>
<span class="tag-reg">css</span>  
Atualizei o tamanho do texto nas citações quando no <code>type:frase</code> do _front metter_.  
<span class="tag-reg">ruby</span>  
Depois da confusão do mentor do Ruby, entrei na onda e troquei [o servidor dos dados para gems](https://gem.coop "novo servidor de dados para gems") do [Ruby](https://www.ruby-lang.org/pt/ "página do Ruby") para o <code>https://gem.coop</code>.

<h4>22 de outubro</h4>
<span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei esta página, o **Registro de Alterações** desse pequeno _proto-jardim-digital_.

<h4>20 de outubro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">css</span>  
Aumentei a distância entre linhas do <code>&lt;nav></code> para ficar melhor para clicar, com o dedo, em telas pequenas.

<h4>17 de outubro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">css</span>  
Revisei a cor de fundo, o texto e a transparência para todas as situações em que uso <code>&lt;code></code>.

<h4>11 de outubro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">liquid</span>  
Revisei o código do <code>&lt;title></code> presente no <code>head.html</code>. Ficou bem mais simples, puxando o <code>title</code> presente no _Front Metter_.

<h4>08 de outubro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">css</span>  
Tirei o sinal **|** como separador dos textos cabeçalho e do rodapé.  
Reorganizei a estrutura do HTML e do CSS (para telas maiores) para que o cabeçalho ocupe uma largura maior da área disponível da janela do navegador e fiz o mesmo para o rodapé (mas com uma largura menor que o cabeçalho). O corpo do site mantém a largura anterior.

<h4>02 de outubro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span><span class="tag-reg">tutorial</span>  
Publiquei a página [Dicas do Blog](/dicas-do-blog). Nela eu pretendo colocar _tutoriais_ que ajudem a resolver problemas como os que eu passei no blog.  
Comecei com **Como fiz meu Fotolog**.

<h4>28 de setembro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">unicode</span>  
Configurei para que o símbolo **↗** apareça ao lado dos links que levam para páginas externas ao site.  
Troquei o site que serve de serviço para as fontes, sai o Google Fonts entra o [Bunny.net](https://fonts.bunny.net/family/montserrat) 

<h4>25 de setembro</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">página</span>  
Atualizei a página [profissional](/profissional) com texto e link que levam para o meu currículo.  
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei a página com o [meu currículo](/profissional/cv).

<h4>18 de setembro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei o [Colofão](/colofao).

<h4>16 de setembro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei a página de comentários sobre a série [_The Leftovers_](/assistindo/the-leftovers-comentarios).

<h4>09 de setembro</h4>
<span class="tag-reg">html</span><span class="tag-reg">novidade</span>  
Coloquei a minha foto do cabeçalho como favicon.

<h4>29 de agosto</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">página</span>  
Alterei o nome da página Midias para Social. Me pareceu um nome melhor.

<h4>27 de agosto</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei a página [Mídias](/social) que apresentam as <del>redes</del>mídias-sociais em que estou presente, ainda.

<h4>19 de agosto</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">html</span><span class="tag-reg">liquid</span>  
Adicionei nas páginas [Arquivo](/arquivo) e [etiquetas (Tags)](/tags) o unicode &#x1F4F7; para aparecer nas postagens que sejam do [Fotolog](/fotolog).

<h4>31 de julho</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">jekyll</span><span class="tag-reg">liquid</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei a página [Arquivo](/arquivo) que apresenta uma lista de todas as postagens, apenas com data e título.

<h4>27 de julho</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei a página [Barras](/barras) que indica todas as páginas existentes no meu pequeno _proto-jardim-digital_.  
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span>   
Criei um botão de alerta de conteúdo.  

Coloquei um link de acesso à página [Barras](/barras) e o botão de alerta no rodapé.

<h4>03 de julho</h4>
<span class="tag-reg">acabamento</span>  
Troquei o selo do [Lerama](https://lerama.pcdomanual.com/?category=blogs&tag) para a imagem do cabeçalho do site, com o fundo escuro, tirando o selo original com o texto pixelado e o fundo azul claro.

<h4>22 de junho</h4>
<span class="tag-reg">acabamento</span><span class="tag-reg">perfil</span>  
Troquei a foto de perfil.

<h4>16 de junho</h4>
<span class="tag-reg">jekyll</span>  
Revisei os <code>post type</code> do _front metter_ para:
<ul>
<li>album: vai para o fotolog;</li>
<li>frase: vai pro blog como citação especial;</li>
<li>notas: vai pro blog com o título oculto;</li>
<li>texto: postagem tradicional do blog.</li>
</ul>

<h4>03 de junho</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Publiquei a página [sobre feed/RSS](/acompanhe) apresentando o conceito, o meu endereço do feed, recomendação de app e afins.

<h4>23 de maio</h4>
<span class="tag-reg">css</span><span class="tag-reg">novidade</span>  
Criei o _modo claro_ e a partir de agora o site se adapta ao tema do sistema. Ainda quero em algum momento  criar um botão para o usuário escolher. Afinal, ainda acho o _modo escuro_ mais bonito.

<h4>15 de maio</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span>  
[Adicionei o selo](https://pcdomanual.com/lerama-selo-88-31/) do [Lerama](https://lerama.pcdomanual.com/?category=blogs&tag) no rodapé do site. Aproveitei e adicionei um selo do [Histórias para Ler](https://historiasparaler.blog.br) também.  Assim ficamos com os dois selos na esquerda e as informações de licença de uso e datas na direita, em telas menores os selos ficam numa segunda linha.  
<span class="tag-reg">html</span>  
Adicionei no _front matter_ das postagens do Fotolog o <code>permalink:/fotolog/...</code>. A partir de agora, as postagens do Fotolog terão endereços exclusivos, mesmo que eu tenha que forçá-los.  

<h4>01 de maio</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
[Publiquei](/blog/minha-pagina-404/) minha página de [erro 404](/404).

<h4>25 de abril</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">jekyll</span><span class="tag-reg">liquid</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Criei meu [Fotolog](/fotolog).

<h4>22 de abril</h4>
<span class="tag-reg">css</span>  
Retirei o justificado dos textos em tela pequena.

<h4>17 de abril</h4>
<span class="tag-reg">Jekyll</span>  
Revisei o <code>_config.yml</code> para aparecer o autor do blog no FEED para os leitores me identificarem.

<h4>11 de abril</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">jekyll</span><span class="tag-reg">liquid</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
Revisei o <code>_config.yml</code> para permitir o uso de tags no blog. Criei a página de [tags](/tags) para guardar os posts _etiquetados_ e no topo da página uma nuvem de tags para permitir uma busca direta.  
<span class="tag-reg">acabamento</span><span class="tag-reg">tipografia</span>  
Troquei a fonte do site para a [Montserrat](https://fonts.google.com/specimen/Montserrat) usando o Google Fonts.

<h4>03 de abril</h4>
<span class="tag-reg">novidade</span><span class="tag-reg">css</span><span class="tag-reg">html</span>  
Adicionei um link no final das páginas que leva ao topo.

<h4>02 de abril</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">jekyll</span>  
Configurei o estilo no css para que as postagens de citações de frases tenham a configuração associada ao <code>post type</code> no _front metter_.

<h4>21 de março</h4>
<span class="tag-reg">css</span>  
Coloquei os textos justificados no site todo quando em telas pequenas.

<h4>20 de março</h4>
<span class="tag-reg">css</span>  
Reconfigurei o css do elemento <code>&lt;a></code> para que os links gerais tenham o estilo certo sem precisar de uma classe específica.

<h4>16 de março</h4>
<span class="tag-reg">acabamento</span>  
Coloquei o aviso de _não tem comentário no blog, mas podemos conversar por email_. Não foram essas palavras, mas essa é a ideia.

<h4>11 de março</h4>
<span class="tag-reg">css</span><span class="tag-reg">liquid</span><span class="tag-reg">jekyll</span>  
Alterei a forma como o CSS interpreta o código no _front metter_ para que o título da postagem fique oculto quando nele estiver <code>type:notas</code>.  

<h4>23 de fevereiro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">jekyll</span><span class="tag-reg">liquid</span><span class="tag-reg">novidade</span><span class="tag-reg">ruby</span>  
O site começou a se tornar um [_proto-jardim-digital_](https://web.archive.org/web/20250317230308/https://www.pedro.dalbo.me/) ao trazer o blog para cá, no endereço [/blog](blog).

<h4>04 de fevereiro</h4>
<span class="tag-reg">css</span><span class="tag-reg">html</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>  
O site começa a caminhar para o [visual atual](https://web.archive.org/web/20250204014457/https://www.pedro.dalbo.me/), com a criação da página de [boas-vindas](/), o [/blog](/blog), a página [Agora](/agora) e uma página de [apresentação profissional](/profissional).

<h3>Alterações em 2024</h3>
<h4>22 de fevereiro</h4>
<span class="tag-reg">descrição</span><span class="tag-reg">página</span>  
Atualizei o texto de [descrição da página↗](https://web.archive.org/web/20240222202427/https://pedro.dalbo.me/) apenas com um resumo profisisonal com meios de contato.

<h3>Alterações em 2020</h3>
<h4>20 de março</h4>
<span class="tag-reg">lá e de volta outra vez</span>  
[Trouxe de volta o blog](/blog/trazendo-de-volta/), graças a uma pandemia.  
_Ainda hospedado no Blogger_.

<h3>Alterações em 2015</h3>
<h4>22 de julho</h4>
<span class="tag-reg">domínio</span><span class="tag-reg">novidade</span><span class="tag-reg">página</span>   
Publiquei este site como uma [página simples↗](https://web.archive.org/web/20150722020921/http://pedro.dalbo.me/), sob o domínio *pedro.dalbo.me*, com um resumo de quem eu sou como profissional e falei sobre o [Histórias para Ler](https://historiasparaler.blog.br).

<h3>Alterações em 2014</h3>
<h4>24 de novembro</h4>
<span class="tag-reg">domínio</span>  
Comprei o domínio dalbo.me.

<h3>Alterações em 2005</h3>
<h4>11 de setembro</h4>
<span class="tag-reg">início</span>  
Dei início ao meu blog, com o nome _Passagens & Momentos_, hospedado no Blogger.
