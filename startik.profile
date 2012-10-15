<?php

/**
 * Implements hook_form_FORM_ID_alter().
 * Allows the profile to alter the site configuration form.
 */
function startik_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
	$form['server_settings']['site_default_country']['#default_value'] = 'UK';
	$form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/London'; // West coast, best coast
}

/**
 * Implements hook_install_tasks().
 */
function startik_install_tasks ($install_state) {
	$tasks['startik_install_form'] = array(
	  'display_name' => st('Startik'),
	  'display' => TRUE,
	  'type' => 'form',
	);
	return $tasks;
}

function startik_install_form ($form_state) {
	$form['description'] = array(
	'#type' => 'item',
	'#title' => t('Form to choose details of quick start build')
	);
	$form['dev_mode'] = array(
	'#type' => 'checkbox', 
	'#title' => t('Development mode'), 
	'#description' => 'Start with development modules and features enabled'
	);
	$form['uk_region'] = array(
	'#type' => 'checkbox', 
	'#title' => t('UK regional settings'), 
	'#description' => 'Start with UK style date formats etc'
	);
		$form['help_resources'] = array(
	'#type' => 'checkbox', 
	'#title' => t('Provide help resources'), 
	'#default_value' => 1,
	'#description' => 'modules to create and display help'
	);
	$form['submit'] = array('#type' => 'submit', '#value' => t('submit'));
	$form['#submit'][] = 'startik_install_form_submit';
  return $form;
}

function startik_install_form_submit ($form, $form_state) {
	// allow access to content for anonymous and authenticated 
	// (http://drupal.org/node/656312#comment-6356304)
	user_role_change_permissions(1, array('access content' => TRUE));
	user_role_change_permissions(2, array('access content' => TRUE));

	if ($form['dev_mode']['#value']) {
		module_enable(
			array(
			'devel',
			'devel_generate',
			'module_filter',
			'ftools',
			'admin_menu',
			'contextual',
			)
		);	
		watchdog('startik', 'dev mode selected');
	}
	if ($form['uk_region']['#value']) {
		 variable_set('date_format_long', 'l, F j, Y - H:i');
		 variable_set('date_format_medium', 'D, d/m/Y - H:i');
		 variable_set('date_format_short', 'd/m/Y - H:i');
	}
	if ($form['help_resources']['#value']) {
		module_enable(
			array(
			'advanced_help',
			'helpful',
			'helpful_hide',
			)
		);	
		watchdog('startik', 'help modules loaded');
	}
}

?>