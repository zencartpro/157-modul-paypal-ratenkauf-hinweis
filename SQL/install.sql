####################################################################
# PayPal Ratenkauf Hinweis 1.1.2 - Install - 2022-12-17 - webchills
####################################################################

INSERT INTO configuration_group (configuration_group_title, configuration_group_description, sort_order, visible) VALUES
('PayPal Ratenkauf', 'PayPal Pay Later Settings', '1', '1');
SET @gid=last_insert_id();
UPDATE configuration_group SET sort_order = last_insert_id() WHERE configuration_group_id = last_insert_id();

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES 

('PayPal Pay Later - Enable', 'PAYPAL_PAY_LATER_STATUS', 'false', 'Do you want to activate the PayPal Pay Later notices?', @gid, 1, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'), '),
('PayPal Pay Later - Layout', 'PAYPAL_PAY_LATER_LAYOUT', 'primary', 'Choose the layout of the notice:<br/><br/>primary = PayPal logo on left<br/>inline = PayPal Logo inline<br/>alternative = little PayPal monogram on left<br/>none = no PayPal logo<br/><br/>', @gid, 2, NOW(), NULL, 'zen_cfg_select_option(array(\'primary\', \'inline\', \'alternative\', \'none\'), '),
('PayPal Pay Later - Text Color', 'PAYPAL_PAY_LATER_COLOR', 'black', 'Choose the text color of the notice:', @gid, 3, NOW(), NULL, 'zen_cfg_select_option(array(\'black\', \'white\'), '),
('PayPal Pay Later - Client ID', 'PAYPAL_PAY_LATER_CLIENT_ID', '123456', 'Please enter your Paypal Client ID here:', @gid, 4, NOW(), NULL, NULL),
('PayPal Pay Later - Minimum Value', 'PAYPAL_PAY_LATER_VALUE', '99', 'Enter here the amount from which the note should be displayed at the price on the item detail, shopping cart and checkout payment page:.', @gid, 5, NOW(), NULL, NULL),
('PayPal Pay Later - Maximum Value', 'PAYPAL_PAY_LATER_VALUE_MAX', '5000', 'Enter here the maximal amount to which the note should be displayed at the price on the item detail, shopping cart and checkout payment page:.', @gid, 6, NOW(), NULL, NULL);

##############################
# Add values for German admin
##############################

INSERT INTO configuration_group (configuration_group_id, language_id, configuration_group_title, configuration_group_description, sort_order, visible ) VALUES 
(@gid, 43, 'PayPal Ratenkauf', 'Paypal Ratenkauf Hinweis Einstellungen', '1', '1');


REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('PayPal Ratenkauf - Hinweis aktivieren?', 'PAYPAL_PAY_LATER_STATUS', 'Wollen Sie den Hinweis auf PayPal Ratenkauf aktivieren?',	43),
('PayPal Ratenkauf - Hinweis Layout', 'PAYPAL_PAY_LATER_LAYOUT', 'Wählen Sie das Layout des Hinweises:<br/><br/>primary = PayPal Logo links<br/>inline = PayPal Logo inline<br/>alternative = kleines PayPal Monogramm links<br/>none = kein PayPal Logo<br/><br/>',	43),
('PayPal Ratenkauf - Textfarbe', 'PAYPAL_PAY_LATER_COLOR', 'Wählen Sie die Textfarbe des Hinweises:<br/><br/>black = schwarz<br/>white = weiss (nur sinnvoll bei dunklem Hintergrund)<br/><br/>',	43),
('PayPal Ratenkauf - Client ID', 'PAYPAL_PAY_LATER_CLIENT_ID', 'Geben Sie hier Ihre PayPal Client ID ein, die Ihnen in Ihrem PayPal Später Bezahlen Messaging Center angezeigt wird:',	43),
('PayPal Ratenkauf - Minimaler Wert', 'PAYPAL_PAY_LATER_VALUE', 'Geben Sie hier den Betrag ein, ab dem der Hinweis beim Preis auf der Artikeldetailseite, im Warenkorb und auf der Zahlungsartauswahlseite angezeigt werden soll.<br/>PayPal Ratenkauf ist generell erst ab einem Betrag von 99 Euro vorgesehen, daher macht hier nur ein Wert größer oder gleich 99 Euro Sinn.',	43),
('PayPal Ratenkauf - Maximaler Wert', 'PAYPAL_PAY_LATER_VALUE_MAX', 'Geben Sie hier den Betrag ein, bis zu dem der Hinweis beim Preis auf der Artikeldetailseite, im Warenkorb und auf der Zahlungsartauswahlseite angezeigt werden soll.<br/>PayPal Ratenkauf ist generell nur bis zu einem Betrag von 5000 Euro vorgesehen, daher macht hier nur ein Wert kleiner gleich 5000 Euro Sinn.',	43);

###################################
# Register for Admin Access Control
###################################

INSERT INTO admin_pages (page_key,language_key,main_page,page_params,menu_key,display_on_menu,sort_order)
VALUES ('configPayPalRatenkauf','BOX_CONFIGURATION_PAYPAL_PAY_LATER','FILENAME_CONFIGURATION',CONCAT('gID=',@gid),'configuration','Y',@gid);