# Proximity

![repo size](https://img.shields.io/github/repo-size/PedroLuisBernardos/Ready-to-Use-Proximity)

## :clipboard: Prerequisites

You'll need [Java 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html).

## :wrench: Installation

You need to clone this repo

```bash
git clone https://github.com/myojin223/Ready-to-Use-Proximity.git
```

or you can [download the zip file](https://github.com/myojin223/Ready-to-Use-Proximity/archive/refs/heads/main.zip). You'll need to `unzip` it to have access to the folder.

And install each font inside the `/fonts` folder present in any `/template`.

## :shell: How to use it?

### Decklist.txt

In this file you will add the cards you want to be proxied. Here are some examples:

```
1x Sol Ring
2 Sol Ring
Sol Ring
```

### art/

If you want to use custom images you need to add them into the `art/` folder. Proximity will automatically understand that a picture with the same name of the card is present and will use it. You need to name those images this way: `Card Name (Artist Name)`, so for instance: `Purphoros, God of the Forge (Jason A. Engle)`.

#### Options and Overrride

You have a bunch of options that are listed [in this file](Proximity%20Override%20Command%20&%20Options.pdf). You can also specify the set you want to be used (see **C19** below).

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

## Templates

You can find a lot of templates in [myojin223's repos](https://github.com/myojin223?tab=repositories). I've also made an [Equinox template](https://github.com/PedroLuisBernardos/Equinox-template-for-Proximity) inspired of CantaPerMe's Photoshop template.

### How to modify it?

You can modify the `template.xml` file to change the final result of your proxys.

#### Art position

 You will need to modify the `x`, `y`, `width` and `height` to adjust your image.
 
```xml
<Image id="art" x="0" y="535" width="3288" height="2385" url="${image_uris.art_crop}">
 ```
 
#### Bottom text (legal and author)

You will need to change the text and maybe modify the `x` and `y` variables to change the position.

 ```xml
<HorizontalLayout id="set_lang_and_artist" x="335" y="4209">
     <Text y="2" value="${set}">
         <Style font="Gotham-Medium-Regular" size="68" capitalization="all_caps" kerning="10">
             <Outline color="#000000" weight="0"/>
         </Style>
     </Text>
     <Spacer height="5" width="13"/>
     <Text value="•">
         <Style font="Altone" size="69"/>
     </Text>
     <Spacer height="5" width="28"/>
     <Text id="lang" value="${lang}" y="2">
         <Style font="Gotham-Medium-Regular" size="68" capitalization="all_caps" kerning="12"/>
     </Text>
     <Spacer height="5" width="27"/>
     <HorizontalLayout>
         <Text id="brush" y="2" value="a">
             <Style font="NDPMTG" size="80"/>
         </Text>
         <Spacer height="5" width="26"/>
         <Text id="artist" value="${artist}">
             <Style font="Beleren Small Caps" size="75" kerning="1.5"/>
         </Text>
     </HorizontalLayout>
 </HorizontalLayout>
 <Group id="disclaimer">
     <Text x="335" y="4131" value="2022 Custom Proxy">
         <Style font="Altone" size="70"/>
     </Text>
     <Text value="NOT FOR SALE" x="1010" y="4136">
         <Style font="Beleren2016-Bold" size="71" kerning="1"/>
     </Text>
 </Group>
```

## 👤 Authors

I let all the `README.md` files inside each *template*, their authors are specified there. If there are any other instructions you can also read it there (for example, with the base and full art with the `template.xml` file in the `/templates/Invention` folder).

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
