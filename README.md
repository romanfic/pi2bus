# pi2bus

V každém veřejném místě, veřejném dopravním prostředku, na úřadech apod. je v dnešní mobilní, rychlé a uspěchané době požadavek na internetové připojení. Nálsedující řádky a skripty Vám usnadní přemýšelní a vymýšlení něčeho už dávno vymyšleného a poskytnou Vám HotSpot za relativně nízké peníze.

## Než začnete...

* Nepouštějte se do větších akcí bez základní znalosti programování v bash.
* Využití pi2bus je pouze na vlastní nebezpečí. Autor neručí za jakoukoliv újmu.
* Před spuštěním se podívejte do všech skriptů, je dobré vědět co vlastně budou dělat.
* Vytváření forku je povoleno s uvedením prvotního zdroje pi2bus a autora.


### Co budete potřebovat a co nepokazit

* Raspberry Pi 3 model B
* Nainstalovaný Raspbian Lite
* Modem Huawei E3372 (USB LTE Stick)
* SIM nějakého operátora, ve skriptu je použita SIM O2

### Instalace

Přejděte do složky, kterou jste klonovali z githubu.

Jako první nainstalujte všechny potřebné balíčky pro HotSpot a rozkopírujte konfigurační soubory. Vše provedete jedním příkazem:
```
./pi2bus
```
Po instalaci proveďte restart.

Toto je základní konfigurace hotspotu. Připojte se k Vaši nové bezdrátové síti.

## Testování

Po staru OS se můžete připojit k Vaši nové bezdrátové síti. Pokud jste dodrželi postup, funguje Vám základní přístup k internetu.

## Nasazení

Záběr využití této konfigurace je obrovksý stejně jako potenciál Raspberry.

## Funkce navíc

### Statistika

Pokud chcete mít přehled o přenesených datech a aktuálnch informací s Raspberry, nainstalujte statistiku.
Spsuťte příkaz:
```
./init-pi2bus-stat.sh
```
Po připojení k bezdrátové síti si v prohlížeči zadejte adresu Raspberry. Dostanete základní statistiku.

## Autor

* **Roman Fic** - [romanfic](https://github.com/romanfic), [romanfic](https://www.ficovi.cz/roman)
