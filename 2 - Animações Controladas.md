# Animações Controladas
Os exercícios a seguir tem como objetivo treinar a criação de animações controladas, portanto, **todas as animações dos exercícios a seguir devem ser criadas com `animações controladas` [[doc]](https://docs.flutter.dev/development/ui/animations/tutorial)**;

## Exercício 1
Crie um botão redondo que fique posicionado no canto inferior direito. Ele deveter as seguintes características:
 1. Formato redondo (semelhante a um `FloatingActionButton` [[doc]](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html));
 2. Posicionado no canto inferior direito;
 3. Ao clicar no botão:
    - mudar sua forma para quadrado;
    - mudar sua posição para a parte superior central;
    
https://user-images.githubusercontent.com/16373553/146085271-8c76dd19-1064-457c-873b-1ad6af26034c.mov

## Exercício 2
Recriar o componente `ExpansionTile` [[doc]](https://api.flutter.dev/flutter/material/ExpansionTile-class.html) utilizando animações controladas.

### Dicas:
 - Utilizar `Transform.rotate` [[doc]](https://api.flutter.dev/flutter/widgets/Transform/Transform.rotate.html)[[video]](https://youtu.be/9z_YNlRlWfA) para girar o ícone;
 - Utilizar propriedade `heighFactor` [[doc]](https://api.flutter.dev/flutter/widgets/Align/heightFactor.html) do widget `Align`[[doc]](https://api.flutter.dev/flutter/widgets/Align-class.html) para fazer o efeito de aumentar e diminuir o tamanho dos filhos;
 

![desafio_1](https://user-images.githubusercontent.com/16373553/146072351-df53fc18-d6b7-487c-8b6f-3b0129fc5c5f.gif)