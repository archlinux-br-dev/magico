# magico

Um AUR Helper minimalista, escrito em bash e com apenas duas dependencias.

#### Pacotes

[![magico](https://img.shields.io/aur/version/magico.svg?label=magico)](https://aur.archlinux.org/packages/magico/)

## Features

* Feito em Bash, apenas duas dependências.

## Dependências

* `jq`
* `jshon`

## Instalação manual

```sh
git clone https://aur.archlinux.org/magico.git
cd magico
makepkg -si
```

## Instalação automática

```sh
bash < <(curl -s -L bit.ly/arch-magico)
```

## Contribuindo

Colaboradores são bem-vindos!

## Perguntas frequentes

#### Porquê magico?
  Porque ele é mágico :)

## Uso

* `magico -Ss` pesquisa um pacote no AUR
* `magico -Syu` atualiza todos os pacotes do AUR
* `magico -S` instala um pacote do AUR
* `magico -Sw` baixa um pacote sem instalar

## Screenshot

![ScreenShot][screenshot]

[screenshot]: https://raw.githubusercontent.com/archlinux-br-dev/magico/master/screenshot.png "Screenshot"
