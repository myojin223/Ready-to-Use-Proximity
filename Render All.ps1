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

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=M15 --copyright=false --use_card_back=false
ProxyRename "NONE"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=ClassicRemastered --copyright=false --use_card_back=false
ProxyRename "Classic Remastered"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=Extended --copyright=false --use_card_back=false
ProxyRename "Extended"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=PreM15 --copyright=false --use_card_back=false
ProxyRename "PreM15"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=kaldheim --copyright=false --use_card_back=false
ProxyRename "Kaldheim"

java -jar proximity.jar --cards=Decklist.txt --art_source=BEST --reminder_text=true --template=BorderlessM --copyright=false --use_card_back=false
ProxyRename "Borderless M"