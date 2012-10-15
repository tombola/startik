api = 2
core = 7.x
projects[drupal][type] = core
projects[drupal][version] = 7.15

;--------------------
; Build Kit overlap
;--------------------

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib
projects[diff][subdir] = contrib


; Modules =====================================================================

projects[admin_menu][subdir] = contrib
projects[backup_migrate][subdir] = contrib

projects[entity][subdir] = contrib
projects[entity_autocomplete][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[entityreference][patch][] = http://drupal.org/files/explicity_include_module.1459540.patch

projects[date][subdir] = contrib
projects[taxonomy_csv][subdir] = contrib

projects[boxes][subdir] = contrib
projects[views_boxes][subdir] = contrib


projects[ds][subdir] = contrib
projects[ds][version] = 2.x

projects[context][subdir] = contrib
projects[spaces][subdir] = contrib
projects[spaces][version] = 3.x-dev
projects[purl][subdir] = contrib
projects[features][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[views][subdir] = contrib
projects[field_group][subdir] = contrib
projects[field_permissions][subdir] = contrib

projects[defaultcontent][subdir] = contrib

; interface ===================
projects[advanced_help][subdir] = contrib
projects[helpful][subdir] = contrib
projects[beautytips][subdir] = contrib
projects[field_display_label][subdir] = contrib

; workflow ====================
; patch workbench to allow features exportables
projects[workbench_moderation][subdir] = contrib
projects[workbench_moderation][patch][] = http://drupal.org/files/workbench_moderation-featuresint-state-transition-1314508-22.patch
projects[rules][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[homebox][subdir] = contrib
projects[flag][subdir] = contrib
projects[login_destination][subdir] = contrib
projects[block_titlelink][subdir] = contrib

; developer ====================
projects[devel][subdir] = contrib
projects[module_filter][subdir] = contrib
projects[admin][subdir] = contrib
projects[ctools][subdir] = contrib
projects[auto_nodetitle][subdir] = contrib
projects[token][subdir] = contrib
projects[features_orphans][subdir] = contrib
projects[ftools][subdir] = contrib
projects[features_plumber][subdir] = contrib
projects[coffee][subdir] = contrib

; fields =======================
projects[content_type_groups][subdir] = contrib
projects[name][subdir] = contrib
projects[email][subdir] = contrib
projects[languagefield][subdir] = contrib
projects[ldap][subdir] = contrib
projects[shib_auth][subdir] = contrib
projects[link][subdir] = contrib
projects[node_convert][subdir] = contrib

; Theming ======================================================================

projects[basic][subdir] = contrib
projects[antonelli][subdir] = contrib
projects[basic][subdir] = contrib
projects[zen][subdir] = contrib

projects[adaptivetheme][subdir] = contrib

projects[omega][subdir] = contrib
projects[omega_tools][subdir] = contrib
projects[navin][subdir] = contrib
projects[respond][subdir] = contrib
projects[omega_kickstart][subdir] = contrib
projects[beta][subdir] = contrib

projects[fences][subdir] = contrib

; Custom Modules ==============================================================

; Features ====================================================================

; PATCH allows permissions to be exported per role (http://drupal.org/node/656312#comment-6347318)
; projects[features][patch][] = http://drupal.org/files/keep_negative_permissions-656312-17.patch

projects[startik_features][type] = module
projects[startik_features][subdir] = custom
projects[startik_features][download][type] = git
projects[startik_features][download][url] = git@github.com:tombola/startik_features.git

; UCF private ====================================================================

projects[ucf_authenticate][type] = module
projects[ucf_authenticate][subdir] = custom
projects[ucf_authenticate][download][type] = git
projects[ucf_authenticate][download][url] = git@github.com:ucfalmouth/ucf_authenticate.git