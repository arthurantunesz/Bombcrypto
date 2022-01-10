# Bombcrypto bot
Fiz essa macro para jogar bombcrypto no modo automático e farmar BCOIN enquanto durmo. Estou disponibilizando-a gratuitamente aqui.

## Funcionamento
Basicamente essa macro manda os heroes trabalharem a cada intervalo de tempo desejado. Atualmente está configurado um intervalo aleatório entre 10 e 40 minutos. Ou seja, a cada intervalo (e.g. 30 min) ele atualiza a página e manda os caras trabalharem, de acordo com a regra estabelecida na seção "Estratégia".

## Instalação
A macro foi escrita em AutoHotKey e pode ser executada como um arquivo .pmc

Para usá-la, baixe o [Pullover's Macro Creator](https://www.macrocreator.com/)

## Estratégia
A estratégia do jogo consiste em otimizar o rodízio dos personagens na tela. Isso porque se todos trabalharem juntos, muitos ficam andando desnecessariamente e "batendo cabeça", o que é um desperdício de tempo, com o qual eles poderiam descansar. Também não se pode deixar a tela sem ninguém trabalhar. Este é, digamos assim, o desafio do jogo, o qual você pode ajudar a resolver, propondo alterações e melhorias nesse código.

### Atualmente a estratégia utilizada é a seguinte
 - A cada intervalo de tempo, atualizar a página e mandar os caras trabalharem
 - Mandar primeiro os 70% verdes*. Se dropar** pelo menos 3, ok, senão:
 - Mandar os 50% verdes. Se dropar pelo menos 3, ok, senão:
 - Dropar dois heroes quaisquer, só pra tela não ficar sem ninguém.


*70% da barra de stamina completa

**dropar significa mandar os caras trabalharem, cliando em "work"

## Importante
O reconhecimento por imagens é um recurso chave dessa macro. Devido a diferentes resoluções de tela, é possível que ela não execute os comandos corretamente. Portanto, teste o funcionamento dela primeiro e, se possível, entenda cada linha de código para personalizá-lo do jeito que lhe for mais conveniente. Também deixo nesse repositório uma pasta com prints dos botões mais importantes do jogo, utilizados para identificação visual.

Hoje, com essa configuração, consigo dobrar meus rendimentos em BCOIN ao deixar a macro rolando a noite.
