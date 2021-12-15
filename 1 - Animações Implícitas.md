# Animações implícitas
Os exercícios a seguir tem como objetivo treinar a utilização de widgets de animações implícitas, portanto, **todas as animações dos exercícios a seguir devem ser criadas com os `widgets de animação implícita` [[doc]](https://docs.flutter.dev/development/ui/animations/implicit-animations)**;

## Exercício 1
Crie um botão redondo que fique posicionado no canto inferior direito. Ele deveter as seguintes características:
 1. Formato redondo (semelhante a um `FloatingActionButton` [[doc]](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html));
 2. Posicionado no canto inferior direito;
 3. Ao clicar no botão:
    - mudar sua forma para quadrado;
    - mudar sua posição para a parte superior central;
    
https://user-images.githubusercontent.com/16373553/146085271-8c76dd19-1064-457c-873b-1ad6af26034c.mov

## Exercício 2
Recriar o componente `ExpansionTile` [[doc]](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) utilizando apenas animações implícitas.

### Dicas:
 - Utilizar `AnimatedRotation` [[doc]](https://api.flutter.dev/flutter/widgets/AnimatedRotation-class.html) para girar o ícone;
 - Utilizar propriedade `heighFactor` [[doc]](https://api.flutter.dev/flutter/widgets/AnimatedAlign/heightFactor.html) do widget `AnimatedAlign`[[doc]](https://api.flutter.dev/flutter/widgets/AnimatedAlign-class.html) para fazer o efeito de aumentar e diminuir o tamanho dos filhos;
 - Veja no código do próprio componente `ExpansionTile` como ele faz essa função;
 

![desafio_1](https://user-images.githubusercontent.com/16373553/146072351-df53fc18-d6b7-487c-8b6f-3b0129fc5c5f.gif)