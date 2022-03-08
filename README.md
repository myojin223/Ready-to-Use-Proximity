# Proximity

![repo size](https://img.shields.io/github/repo-size/PedroLuisBernardos/Ready-to-Use-Proximity)

## :clipboard: Prerequisites

You'll need [Java 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html).

## :wrench: Installation

You need to clone this repo

```bash
git clone https://github.com/PedroLuisBernardos/Ready-to-Use-Proximity.git
```

or you can [download the zip file](https://github.com/PedroLuisBernardos/Ready-to-Use-Proximity/archive/refs/heads/main.zip). You'll need to `unzip` it to have access to the folder.

And install each font inside the `/fonts` folder present in any `/template`.

## :shell: How to use it?

### Decklist.txt

In this file you will add the cards you want to be proxied. Here are some examples:

```
1x Sol Ring
2 Sol Ring
Sol Ring
```

#### Options and Overrride

You have a bunch of options that are listed [in this file](Ready-to-Use-Proximity\Options-Override.pdf). You can also specify the set you want to be used (see **C19** below).

```
Sol Ring (C19)
Sol Ring --set_symbol="khm" --override=set:"stx" --override=artist:"Gandalf"
Sol Ring --override=image_uris.art_crop:"file:///C:/Users/pedro/Downloads/Proximity/art/a.jpg"
```

If you want to override the image you'll need the adress that your navigator uses. To see it, open your image with your browser and copy it's url.

I add the custom arts inside the `/art` folder but you can add them wherever you want.

### Bat

Each template has a `bat` file. For example, if you use the `DnD.bat` file, it will create a proxy inside the `/images/front` folder with all your cards specified in the `Decklist.txt` file using the `/templates/DnD` template.

You can edit the `bat` file by right clicking it and selecting `Edit` or `Open with` then select *NodePad* or your *IDE*.

You can add the `cmd \k` command if you don't want the command prompt to close after the execution of the script. For example:

```bat
java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=kaldheim --copyright=false --use_card_back=false
cmd \k
```

### Render All

If you want to render all the templates for each card in the `Decklist.txt` file, you can run the `Render All.ps1` file and execute it with *PowerShell*. It will save all the cards inside the `/Completed` folder.

<samp>note: if you have the same card in different lines in your `Desklist.txt` file, it will only save the last one.</samp>

For example, if you have this file, it will ignore the first Sol Ring:

```
Sol Ring (C19)
Sol Ring --set_symbol="khm" -override=set:"stx" --override=artist:"Gandalf"
```

## 👤 Authors

I let all the `README.md` files inside each *template*, their authors are specified there. If there are any other instructions you can also read it there (for example, with the base and full art with the `template.xml` file in the `/templates/Invention` folder).

This repo was forked from the [myojin223](https://github.com/myojin223/Ready-to-Use-Proximity) repo.

Proximity is a [Haven-King](https://github.com/Proximity-Engine/Proximity) software.

For more information, you can join the [discord](https://discord.gg/ecqZxbYR) group.

I, [PedroLuisBernardos](https://github.com/PedroLuisBernardos), created this `README.md`, modified a bit the `Render All.ps1` file and joined all the [myojin223](https://github.com/myojin223?tab=repositories) templates in one file.

## Other ressources

* [Card Conjurer](https://cardconjurer.com/creator/?copyright)
  * [GitHub](https://github.com/ImKyle4815/cardconjurer)
* [mtgpics](https://www.mtgpics.com/index)
* [Scryfall](https://scryfall.com/)
* [MPC Fill](https://mpcfill.com/)
* [Make Playing Cards](https://www.makeplayingcards.com/)
