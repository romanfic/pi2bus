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

Nepřipojujte modem dříve než nainstalujete init-pi2bus-modem.sh

### Instalace

Přejděte do složky, kterou jste klonovali z githubu.

Jako první nainstalujte všechny potřebné balíčky pro HotSpot a rozkopírujte konfigurační soubory. Vše provedete jedním příkazem:
```
./init-pi2bus.sh
```
Po instalaci následuje restart OS.

Po startu OS můžeme nainstalovat podporu modemu. Skript počítá se zabezpečením SIM pinem. Doporučuji využít. Sníží se tím zneužítí SIM při případném odcizení ze špatně zvoleného umístění na veřejném místě.
Přípojte modem k Raspberry a spusťe:
```
./init-pi2bus-modem.sh
```
Měli by jste dostat informaci o úspěšném přidání spojení od network-manager.

Jako poslední je třeba nastavit iptables pro správnou funkci portforwardingu. Ten je povolen už v prvním kroku, ale bez pravidel v iptables pro toto využití nedává smysl. Zároveň je aplikován, nazývám to, minimal firewall. Povoluje se jen základní komunikace do internetu. Pokud potřebujete povolit něco navíc, seznamte se s dokumetací iptables.

```
./init-pi2bus-firewall.sh
```
Po instalaci následuje restart.

Toto je základní konfigurace hotspotu.

## Testování

Po staru OS se můžete připojit k Vaši nové bezdrátové síti. Pokud jste dodrželi postup, funguje Vám základní přístup k internetu.

## Nasazení

Záběr využití této konfigurace je obrovksý stejně jako potenciál Raspberry.

## Funkce navíc

### Agregace

Pokud požadujete mít kontrolu nad rychlostí, chcete z nějakého důvodu omezit rychlost, můžete využít skriptu agregace.
Spusťte příkaz:
```
./init-pi2bus-agregace.sh
```
Přikaždém startu OS se aplikuje omezení rychlosti na všechny možné IP adresy v bezdrátové síti. Limiti se nastavují v adresáři /opt/pi2bus/settings

### Statistika

Pokud chcete mít přehled o přenesených datech a aktuálnch informací s Raspberry, nainstalujte statistiku.
Spsuťte příkaz:
```
./init-pi2bus-stat.sh
```
Po připojení k bezdrátové síti si v prohlížeči zadejte adresu Raspberry. Dostanete základní statistiku.

## Autor

* **Roman Fic** - [romanfic](https://github.com/romanfic), [romanfic](https://www.ficovi.cz/roman)
