
-- TABLE: PROFILES 

CREATE TABLE IF NOT EXISTS `bx_persons_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(10) unsigned NOT NULL,
  `added` int(11) NOT NULL,
  `changed` int(11) NOT NULL,
  `picture` int(11) NOT NULL,
  `cover` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `sex` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);


-- TABLE: STORAGES & TRANSCODERS

CREATE TABLE `bx_persons_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `remote_id` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `remote_id` (`remote_id`)
);

CREATE TABLE `bx_persons_pictures_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `remote_id` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `remote_id` (`remote_id`)
);

CREATE TABLE `bx_persons_pictures_resized` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `remote_id` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `ext` varchar(32) NOT NULL,
  `size` int(11) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `private` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `remote_id` (`remote_id`)
);

-- FORMS

INSERT INTO `sys_objects_form`(`object`, `module`, `title`, `action`, `form_attrs`, `table`, `key`, `uri`, `uri_title`, `submit_name`, `params`, `deletable`, `active`, `override_class_name`, `override_class_file`) VALUES 
('bx_person', 'bx_persons', '_bx_persons_form_person', '', 'a:1:{s:7:\"enctype\";s:19:\"multipart/form-data\";}', 'bx_persons_data', 'id', '', '', 'do_submit', '', 0, 1, 'BxPersonsFormPerson', 'modules/boonex/persons/classes/BxPersonsFormPerson.php');

INSERT INTO `sys_form_displays`(`object`, `display_name`, `module`, `view_mode`, `title`) VALUES 
('bx_person', 'bx_person_add', 'bx_persons', 0, '_bx_persons_form_person_display_add'),
('bx_person', 'bx_person_delete', 'bx_persons', 0, '_bx_persons_form_person_display_delete'),
('bx_person', 'bx_person_edit', 'bx_persons', 0, '_bx_persons_form_person_display_edit'),
('bx_person', 'bx_person_view', 'bx_persons', 1, '_bx_persons_form_person_display_view');

INSERT INTO `sys_form_inputs`(`object`, `module`, `name`, `value`, `values`, `checked`, `type`, `caption_system`, `caption`, `info`, `required`, `collapsed`, `html`, `attrs`, `attrs_tr`, `attrs_wrapper`, `checker_func`, `checker_params`, `checker_error`, `db_pass`, `db_params`, `editable`, `deletable`) VALUES 
('bx_person', 'bx_persons', 'delete_confirm', 1, '', 0, 'checkbox', '_bx_persons_form_person_input_sys_delete_confirm', '_bx_persons_form_person_input_delete_confirm', '_bx_persons_form_person_input_delete_confirm_info', 1, 0, 0, '', '', '', 'Avail', '', '_bx_persons_form_person_input_delete_confirm_error', '', '', 1, 0),
('bx_person', 'bx_persons', 'do_submit', '_sys_form_account_input_submit', '', 0, 'submit', '_bx_persons_form_person_input_sys_do_submit', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', 1, 0),
('bx_person', 'bx_persons', 'fullname', '', '', 0, 'text', '_bx_persons_form_person_input_sys_fullname', '_bx_persons_form_person_input_fullname', '', 1, 0, 0, '', '', '', 'Avail', '', '_bx_persons_form_person_input_fullname_err', 'Xss', '', 1, 0),
('bx_person', 'bx_persons', 'picture', '', '', 0, 'files', '_bx_persons_form_person_input_sys_picture', '_bx_persons_form_person_input_picture', '', 1, 0, 0, '', '', '', 'Avail', '', '_bx_persons_form_person_input_picture_err', 'Int', '', 1, 0),
('bx_person', 'bx_persons', 'cover', '', '', 0, 'files', '_bx_persons_form_person_input_sys_cover', '_bx_persons_form_person_input_cover', '', 0, 0, 0, '', '', '', '', '', '', 'Int', '', 1, 0),
('bx_person', 'bx_persons', 'sex', 1, '#!Sex', 0, 'radio_set', '_bx_persons_form_person_input_sys_sex', '_bx_persons_form_person_input_sex', '', 1, 0, 0, '', '', '', 'Avail', '', '_bx_persons_form_person_input_sex_err', 'Xss', '', 1, 1);

INSERT INTO `sys_form_display_inputs`(`display_name`, `input_name`, `visible_for_levels`, `active`, `order`) VALUES 
('bx_person_add', 'delete_confirm', 2147483647, 0, 1),
('bx_person_add', 'picture', 2147483647, 1, 2),
('bx_person_add', 'cover', 2147483647, 1, 3),
('bx_person_add', 'fullname', 2147483647, 1, 4),
('bx_person_add', 'sex', 2147483647, 1, 5),
('bx_person_add', 'do_submit', 2147483647, 1, 6),
('bx_person_delete', 'picture', 2147483647, 0, 0),
('bx_person_delete', 'cover', 2147483647, 0, 0),
('bx_person_delete', 'delete_confirm', 2147483647, 1, 0),
('bx_person_delete', 'do_submit', 2147483647, 1, 1),
('bx_person_delete', 'fullname', 2147483647, 0, 2),
('bx_person_delete', 'sex', 2147483647, 0, 3),
('bx_person_edit', 'delete_confirm', 2147483647, 0, 1),
('bx_person_edit', 'picture', 2147483647, 1, 2),
('bx_person_edit', 'cover', 2147483647, 1, 3),
('bx_person_edit', 'fullname', 2147483647, 1, 4),
('bx_person_edit', 'sex', 2147483647, 1, 5),
('bx_person_edit', 'do_submit', 2147483647, 1, 6),
('bx_person_view', 'delete_confirm', 2147483647, 0, 1),
('bx_person_view', 'picture', 2147483647, 0, 2),
('bx_person_view', 'cover', 2147483647, 0, 3),
('bx_person_view', 'fullname', 2147483647, 1, 4),
('bx_person_view', 'sex', 2147483647, 1, 5),
('bx_person_view', 'do_submit', 2147483647, 0, 6);

-- STUDIO PAGE & WIDGET

INSERT INTO `sys_std_pages`(`index`, `name`, `header`, `caption`, `icon`) VALUES
(3, 'bx_persons', '_bx_persons', '_bx_persons', 'bx_persons@modules/boonex/persons/|std-pi.png');
SET @iPageId = LAST_INSERT_ID();

SET @iParentPageId = (SELECT `id` FROM `sys_std_pages` WHERE `name` = 'home');
SET @iParentPageOrder = (SELECT MAX(`order`) FROM `sys_std_pages_widgets` WHERE `page_id` = @iParentPageId);
INSERT INTO `sys_std_widgets` (`page_id`, `module`, `url`, `click`, `icon`, `caption`, `cnt_notices`, `cnt_actions`) VALUES
(@iPageId, 'bx_persons', '{url_studio}module.php?name=bx_persons', '', 'bx_persons@modules/boonex/persons/|std-wi.png', '_bx_persons', '', 'a:4:{s:6:"module";s:6:"system";s:6:"method";s:11:"get_actions";s:6:"params";a:0:{}s:5:"class";s:18:"TemplStudioModules";}');
INSERT INTO `sys_std_pages_widgets` (`page_id`, `widget_id`, `order`) VALUES
(@iParentPageId, LAST_INSERT_ID(), IF(ISNULL(@iParentPageOrder), 1, @iParentPageOrder + 1));

