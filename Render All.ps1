function ProxyRename {
    Param(
        [Parameter(Mandatory, Position = 0)][string]$Template
    )
    
    $srcpath = ".\images\fronts\" # Path to Proximtiy Output Images with trailing \
    $dstpath = ".\Completed\" # Path to folder for completed, renamged images with trailing \

    $srclist = Get-ChildItem -Path $srcpath

    foreach ($srcimage in $srclist) {
        if ($Template -eq "NONE") {
            $dstimage = $srcimage.name -replace "^\d+ (.*).png","`$1.png"
        }
        else {
            $dstimage = $srcimage.name -replace "^\d+ (.*).png","`$1 ($Template).png"
        }
        $srcimage = $srcpath + $srcimage.name
        $dstimage = $dstpath + $dstimage
        Move-Item "$srcimage" "$dstimage" -Force
    }

}

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=false --template=BorderlessM --copyright=false --use_card_back=false --flavor_text=false --watermark=none
ProxyRename "BorderlessM"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=ClassicRemastered --copyright=false --gold_bordered_hybrid=false --gold_bordered_multicolored=false --use_card_back=false
ProxyRename "ClassicRemastered"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=false --template=DnD --copyright=false --use_card_back=false --watermark=NONE --flavor_text=false
ProxyRename "DnD"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=DoubleFeature --copyright=false --use_card_back=false
ProxyRename "DoubleFeature"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=Extended --copyright=false --use_card_back=false --watermark=NONE
ProxyRename "Extended"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=Equinox --copyright=false --use_card_back=false
ProxyRename "Equinox"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=FANGEXT --copyright=false --use_card_back=false
ProxyRename "FANGTEXT"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=FANGFULL --copyright=false --use_card_back=false
ProxyRename "FANGFULL"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=FANG --copyright=false --use_card_back=false --set_symbol=NONE
ProxyRename "FANG"

java -jar proximity.jar --cards=Decklist.txt --reminder_text=false --template=fullart --copyright=false --use_card_back=false --flavor_text=false --border=none
ProxyRename "Full Art"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=Invention --copyright=false --use_card_back=false
ProxyRename "Invention"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=kaldheim --copyright=false --use_card_back=false
ProxyRename "Kaldheim"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=MaleMPC --copyright=false --use_card_back=false --watermark=NONE
ProxyRename "MaleMPC"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=minimalist --copyright=false --use_card_back=false --watermark=NONE
ProxyRename "Minimalistic"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=mystical --copyright=false --use_card_back=false
ProxyRename "Mystical Archive"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=PHYREXIAN --copyright=false --use_card_back=false
ProxyRename "Phyrexian"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=Pinlines --copyright=false --use_card_back=false
ProxyRename "Pinlines"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=PreM15 --copyright=false --use_card_back=false --watermark=NONE
ProxyRename "PreM15"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=Sketch --copyright=false --use_card_back=false
ProxyRename "Sketch"

java -jar proximity.jar --cards=Decklist.txt --art_source=LOCAL --reminder_text=true --template=SSDFC --copyright=false --use_card_back=false --set_symbol=NONE --remove_original_card=false
ProxyRename "SSDFC"
