########################################################################
# Paypal Ratenkauf Hinweis 1.1.2 - UNINSTALL - 2022-12-17 - webchills
# Nur ausführen, wenn Sie das Modul aus der Datenbank entfernen wollen!
########################################################################

DELETE FROM configuration WHERE configuration_key = 'PAYPAL_PAY_LATER_STATUS';
DELETE FROM configuration WHERE configuration_key = 'PAYPAL_PAY_LATER_CLIENT_ID';
DELETE FROM configuration WHERE configuration_key = 'PAYPAL_PAY_LATER_LAYOUT';
DELETE FROM configuration WHERE configuration_key = 'PAYPAL_PAY_LATER_COLOR';
DELETE FROM configuration WHERE configuration_key = 'PAYPAL_PAY_LATER_VALUE';
DELETE FROM configuration WHERE configuration_key = 'PAYPAL_PAY_LATER_VALUE_MAX';
DELETE FROM configuration_language WHERE configuration_key = 'PAYPAL_PAY_LATER_STATUS';
DELETE FROM configuration_language WHERE configuration_key = 'PAYPAL_PAY_LATER_CLIENT_ID';
DELETE FROM configuration_language WHERE configuration_key = 'PAYPAL_PAY_LATER_LAYOUT';
DELETE FROM configuration_language WHERE configuration_key = 'PAYPAL_PAY_LATER_COLOR';
DELETE FROM configuration_language WHERE configuration_key = 'PAYPAL_PAY_LATER_VALUE';
DELETE FROM configuration_language WHERE configuration_key = 'PAYPAL_PAY_LATER_VALUE_MAX';
DELETE FROM configuration_group WHERE configuration_group_title = 'PayPal Ratenkauf';
DELETE FROM admin_pages WHERE page_key='configPayPalRatenkauf';