---
layout: post
type: texto 
title: "Uma seção de comentários pra chamar de sua"
date: 2026-03-22 16:00:00 -0300
tags:
 - a vida, o universo e tudo mais
 - metablog
---
Eu desde que criei esse espaço pensava em colocar uma seção de comentários, mas tava achando meio complicado e fui deixando.  

Aceitei que uma solução seria deixar um belo link `mailto` configurado para abrir no serviço de email das pessoas e já aparecer o assunto e a pessoa só escrever. Mas parece que hoje em dia isso não está tão simples. Talvez no celular seja, mas nos computadores tenho um grande número de pessoas dizendo que nem sempre o `mailto` funciona. Tem algumas configurações no sistema operacional que as pessoas não estão muito dispostas a resolver só para comentar num blog (e tá tudo bem). E aí, mesmo que queiram, não comentam.  

Tem gente também que tem outra relação com os emails e simplesmente não querem comentar por lá. Não vou entrar nesse mérito todo, já tive conversas sobre isso e resolvi que não vale esse debate.  

E por isso, voltei a procurar uma solução que estivesse de acordo com o que eu acho bacana apresentar, então eu encontrei algumas alternativas e vou dizer porquê não fiquei com nenhuma delas e o que eu fiz no final para implementar um sistema de comentários.

A primeira coisa é que eu queria era um sistema que não ficasse guardando dados de quem fosse comentar. Não tem a menor necessidade, isso aqui é um hobby e não quero que as pessoas venham e percam sua privacidade ao interagir comigo. Esse é o principal ponto.  

Queria tambem algo gratuito ou que não fosse muito caro. Meu site é pouquíssimo visitado, pelo menos imagino que seja, já que não capturo nenhuma informação de acesso, e não tenho pretensão de gastar rios de dinheiro no meu hobby, mas aceitaria gastar alguns trocados, mesmo que em doletas.

Depois, como eu tenho um site estático, em Jekyll, e hospedo tudo no Netlify, isso dá uma dificultada nas opções e nos sistemas que posso usar.

#### Os sistemas que considerei

A primeira coisa que fiz foi visitar a página do Jekyll e ver se encontrava alguma recomendação por lá, e tive duas opções.  

A primeira é o [Staticman](https://new.staticman.net/), um sistema que aparentemente foi pensado no Jekyll. Mas me pareceu meio abandonado. Para além disso, algumas questões de configuração que não consegui entender e fazer *fununciar*, tutoriais pouco amigáveis para um total iniciante, relativamente confusos. Nem com a ajuda dos *estagiários que consomem mais água que alguns milionários* consegui fazer funcionar.  

<blockquote class="fleabag">Beleza, vamos tentar outro. pretensõesO mundo não vai acabar.</blockquote>

Eu considerei usar o [Talkyard](https://www.talkyard.io/), outra solução indicada no site do Jekyll. Esse eu vou dizer que é bem simples de implementar e na verdade é uma bazuca. Eles são um produto que atende sistemas de fóruns e comentários de sites, mas comentários em pequenos blogs não é o foco deles. Tanto que para sites pessoais o serviço é gratuito.  

Como falei, é uma bazuca, tem muitas funções, mas é super fácil de implementar, alguns códigos pré determinados e pronto, mas é um pouco complicado de configurar o CSS para deixar com o visual do site e retirar muitas das funções oferecidas e que não seriam usadas. Fora que como são um serviço bem robusto, eles possuem todo um sistema de login e perfis, o que deixa complicado fazer coisas simples, como o comentarista apresentar a url do seu site vinculada ao seu comentário. Até tentei conversar com os desenvolvedores, mas explicaram que não está no horizonte deles esse tipo de apresentação. Desisti, porque fica muito fora de algo mais simples como eu desejava.  

Seguindo minha jornada lembrei que outro site em Jekyll que acompanho utiliza uma solução que sempre achei bacana. O site é o [sol2070](http://sol2070.in) e a solução de comentários é o [Isso](https://isso-comments.de/).  

O *Isso-comments* é muito bacana, aparentemente simples e muito bonito, mas ele precisa ser hospedado em algum lugar e não tenho um serviço de *self-hosted* (é assim que fala?). Não acho que seja um mundo que eu queira adentrar agora. Tem toda uma configuração que eu teria que ir atrás e um custo que não sei se preciso pagar e por isso abandonei rapidamente uma solução que parecia ser perfeita.  

E por fim encontrei o [Cusdis](https://cusdis.com/).  

<blockquote class="fleabag">Meu amigo, minha amiga, parecia que eu tinha encontrado meu pote de ouro no final do arco íris.</blockquote>

Um sistema leve, que poderia ou não ser auto-hospedado, com um visual simples que se integraria facilmente ao site. Mas... sempre tem um mas.  

Lembra que eu falei que era importante ter como o comentarista deixar seu site? No Cusdis não tem esse campo, apenas nome e email. E infelizmente apesar de todas as vantagens, a falta desse campo para disponibilizar se tornou um impeditivo.  

<blockquote class="fleabag">Sim, eu sei... Parece que estou só dificultando as coisas e procurando pelo em ovo. Mas veja, esse cantinho  aqui é especial e quero  fazer coisas bacanas por aqui, não posso aceitar "qualquer coisa".</blockquote>

Tentei pesquisar uma solução para editar o bloco a ser inserido, mas ele vem num bloco fechado em que você insere e os comentários vem externamente, não tem como editar. O próprio site é extremamente simples e não apresenta nenhuma opção de configuração ou personalização.  

Dessa forma fiquei sem encontrar nenhuma solução que atenda minhas parcas, mas excêntricas, vontades.  

<blockquote class="fleabag">Veja... Se eu estou escrevendo esse texto todo é porque teremos comentários aqui, então o que eu fiz?</blockquote>

#### A minha solução foi...

No fim, eu desisti disso tudo e resolvi respeitar o funcionamento artesanal do meu espaço e o fato de eu querer fazer dele um lugar onde a internet seja mais lenta e menos desesperada pelo imediatismo.  

Passei algumas horas conversando com o _estagiário que gasta mais água que milionários_ e construí meu proprio sistema de comentários. Com a minha cara, sem coleta de dados pessoais desnecessários e com as funções que eu quero.  

Vale dizer que pelo que entendi, parte do funcionamento do meu sistema segue a mesma premissa do Staticman, mas eu farei as coisas ~~manualmente~~ de forma artesanal.  

Estou usando o serviço do Netlify Forms para receber os emails com os comentários, temos uma página de confirmação de envio avisando que o comentário não aparece imediatamente e um esquema visual que conversa com o site. Ah, e quando eu responder, teremos algumas gracinhas visuais para me identificar, espero que gostem.  

O sistema de comentários possui três níveis de conversa: um comentário, uma resposta a esse comentário e uma resposta à resposta. Não é um limite de quantidade, podem comentar a vontade, mas as respostas se aprofundam até esse terceiro nível.

Os únicos dados coletados são os que você quiser entregar. Na verdade, um nome é obrigatório, você pode colocar seu site, que terá um link no comentário (lembra que isso era bem importante para mim?) e seu email, se quiser que eu te avise caso alguém responda seu comentário. E os seus comentários, claro.  

Eu recebo um email com seu comentário e coloco ele no site. Como eu disse, extremamente artesanal e no tempo que for possível. Claro que sempre farei o mais rápido possível. Fique tranquilo, não estou querendo ficar moderando ninguém, espero não precisar, e nem vou mexer no texto. Do jeito que escrever irá pro comentário.  

Ah, falando em _do jeito que escrever_, vale avisar que os comentários aceitam formatação **markdown**. Não sabe o que é isso? [Aqui tem um site explicando](https://md-tool.com/pt/markdown-guide/cheat-sheet), é bem bacana e simples de usar. O WhatsApp aplica formatação markdown nas suas mensagens.  

Espero que isso facilite nossas conversas. Ainda manterei a possibilidade de conversamos por email, acho uma interação mais pessoal e que permite conversas mais elaboradas muitas vezes. Opções, opções são sempre ótimas.