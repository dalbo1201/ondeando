---
layout: paginas
title: Becape do Blogger | Dicas do blog
permalink: "/dicas-do-blog/bkp-blogger-md"
---
<h2><span aria-hidden="true">|</span>Becape<span class="h2-menor"> do Blogger</span> </h2>
Aqui a ideia é permitir fazer o becape das postagens de blogs feitos no Blogger para facilitar a mudança de plataforma caso ela vá ocorrer e depois do que houve na desenha do sia 05/08/2026 em que o Google derrubou uma série de blogs por _irem contra os termos de serviço_ e a gente conhecer blogs derrubados e sabendo que eles não iam contra os termos, é melhor prevenir.

<a href="/dicas-do-blog">&laquo; voltar para as dicas</a>
<hr>

Claro que infelizmente eu pedi ajuda ao <i>cláudio-que-bebe-mais-agua-que-camelo</i>, ele fez um <code>exe</code> que você roda e extrai as postagens do blogger, para arquivos <code>.md</code>, e as imagens que estavam nas postagens para o seu PC.  
Abaixo eu deixo o tutorial de uso do <code>exe</code>, mas não se preocupe que ele vai junto com o arquivo dentro do <code>ZIP</code>.

<ul>
<li><a href="#windows">Para Windows</a>;</li>
<li><a href="#linux">Para Linux</a>.</li>
</ul>

Espero que isso esteja funcionando para vocês, testei em dois blogs meus e parece que foi.

<h4 id="windows">Para Windows <a href="#" >↑</a></h4>

<a href="/assets/downloads/bkp-blogger-arquivos-md (Windows).zip" title="Arquivo para Windows">arquivo ZIP para baixar</a>.

<pre><code>
LEIA TUDO ANTES DE USAR.

---

Abra o arquivo rodar.baT no bloco de notAS. 

Nele você verá o seguinte texto.

<b>@echo off
blogger_to_jekyll.exe https://www.seublog.com.br
pause</b>

Subistitua <b>https://www.seublog.com.br</b> pelo endereço do seu blog.

Seu blog deve ser público, deve ser, mas só para confirmar.

Se quiser extrair postagens a partir de uma data específica substitua 

<b>https://www.seublog.com.br</b>

por

<b>https://www.seublog.com.br --desde AAAA-MM-DD</b>

onde AAAA-MM-DD é a data, p.e. 2025-08-01

salve o arquivo e feche.

Dê dois cliques nele para abrir.

vai abrir a tela do comand (cmd).

você verá ele lendo e baixando postagem por postagem.

Ele vai criar uma pasta <b>/_post/</b> com os arquivos em <b>.md</b> com o nome

<b>AAAA-MM_DD-título-da-postagem.md</b>

E criará uma pasta <b>/imagens/</b> com uma pasta para cada postagem com as imagens que estão na postagem.

<b>/imagens/AAAA-MM_DD-título-da-postagem</></b>

---

No arquivo .MD virá o cabeçalho com título, data, autor e tags.

</code></pre>

<h4 id="linux">Para Linux <a href="#" >↑</a></h4>

Como eu não uso Linuz, fiquei na dúvida da melhor extensão de compactação, deixai essas que me eram disponíveis. Qualquer coisa [me manda um email](mailto:pedro@dalbo.me?subject=becape do Blogger para md (linux)) e a gente tenta outro.  
<ul>
<li><a href="/assets/downloads/bkp-blogger-arquivos-md (Linux).zip" title="arquivos para Linux">arquivo ZIP para baixar</a>;</li>
<li><a href="/assets/downloads/bkp-blogger-arquivos-md (Linux).tar" title="arquivos para Linux">arquivo TAR para baixar</a>;</li>
<li><a href="/assets/downloads/bkp-blogger-arquivos-md (Linux).7z" title="arquivos para Linux">arquivo 7Z para baixar</a>.</li>
</ul>

<pre><code>
LEIA TUDO ANTES DE USAR.

---

Abra o arquivo `rodar.sh` em um editor de texto.

Nele você verá o seguinte texto:

<b>
#!/bin/bash
./blogger_to_jekyll https://www.seublog.com.br
</b>

<b>Substitua `https://www.seublog.com.br` pelo endereço do seu blog.</b>

Seu blog deve ser público.

Se quiser extrair postagens a partir de uma data específica, substitua

<b>https://www.seublog.com.br</b>

por

<b>https://www.seublog.com.br --desde AAAA-MM-DD</b>

onde AAAA-MM-DD é a data, ex: `2025-08-01`

Salve o arquivo e feche.

---

Antes de usar pela primeira vez, você precisa dar permissão de execução
aos dois arquivos. Abra o terminal na pasta onde estão e rode:

<b>
chmod +x blogger_to_jekyll
chmod +x rodar.sh
</b>

Isso só precisa ser feito uma vez.

---

Para rodar, no terminal digite:

<b>
./rodar.sh
</b>

Ou se preferir, clique duas vezes no arquivo <b>rodar.sh</b> no gerenciador
de arquivos. Se ele perguntar o que fazer, escolha <b>Executar no terminal</b>.

Você verá ele lendo e baixando postagem por postagem.

---

Ele vai criar uma pasta <b>/_posts/</b> com os arquivos em <b>.md</b> com o nome

<b>AAAA-MM-DD-titulo-da-postagem.md</b>

E criará uma pasta `/imagens/` com uma subpasta para cada postagem
contendo as imagens que estão na postagem:

<b>/imagens/AAAA-MM-DD-titulo-da-postagem/</b>

---

No arquivo <b>.md</b> virá o cabeçalho com título, data, autor e tags.

</code></pre>