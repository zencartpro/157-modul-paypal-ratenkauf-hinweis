# 157-modul-paypal-ratenkauf-hinweis
PayPal Ratenkauf Hinweis für Zen Cart 1.5.7 deutsch

Hinweis: 
Freigegebene getestete Versionen für den Einsatz in Livesystemen ausschließlich unter Releases herunterladen:
* https://github.com/zencartpro/157-modul-paypal-ratenkauf-hinweis/releases

## Dies ist kein Zahlungsmodul! ##
Die Zahlung läuft ganz normal via PayPal Express, wo der Kunde dann auf der PayPal Seite den Ratenkauf auswählt.

Für Shopinhaber mit PayPal Account in Deutschland bietet PayPal für Beträge zwischen 99 und 5000 Euro Ratenkauf an.
Anspruchsberechtigte Endkunden müssen PayPal ein SEPA Lastschriftmandat erteilen sowie über ein deutsches PayPal Privat-Konto mit bestätigtem Bankkonto als Zahlungsquelle verfügen.
Um auf den Ratenkauf hinzuweisen integriert dieses Modul die entsprechenden PayPal Ratenzahlung Hinweise auf:
* Artikeldetailseite
* Warenkorb
* Zahlungsart Auswahlseite

Verwendet wird dazu Dynamic Messaging, die passenden Beträge werden also in die PayPal Popups übergeben, so dass die Raten bereits vorberechnet werden.
In der Zen Cart Administration ist einstellbar, ab welchem und bis zu welchem Betrag die Hinweise angezeigt werden soll. Ebenso ist das Layout der Hinweise einstellbar.


