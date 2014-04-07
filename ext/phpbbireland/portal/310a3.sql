CREATE TABLE IF NOT EXISTS phpbb_k_blocks (
  id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  ndx mediumint(8) unsigned NOT NULL DEFAULT '0',
  title varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  position char(1) COLLATE utf8_bin NOT NULL DEFAULT 'L',
  type char(1) COLLATE utf8_bin NOT NULL DEFAULT 'H',
  active tinyint(1) unsigned NOT NULL DEFAULT '1',
  html_file_name varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  var_file_name varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'none.gif',
  img_file_name varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'none.gif',
  view_all tinyint(1) unsigned NOT NULL DEFAULT '1',
  view_groups varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  view_pages varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  groups mediumint(8) unsigned NOT NULL DEFAULT '0',
  scroll tinyint(1) unsigned NOT NULL DEFAULT '0',
  block_height smallint(4) unsigned NOT NULL DEFAULT '0',
  has_vars tinyint(1) unsigned NOT NULL DEFAULT '0',
  is_static tinyint(1) unsigned NOT NULL DEFAULT '0',
  minimod_based tinyint(1) unsigned NOT NULL DEFAULT '0',
  mod_block_id mediumint(8) unsigned NOT NULL DEFAULT '0',
  block_cache_time mediumint(8) unsigned NOT NULL DEFAULT '600',
  PRIMARY KEY (id)
);

INSERT INTO phpbb_k_blocks (id, ndx, title, position, type, active, html_file_name, var_file_name, img_file_name, view_all, view_groups, view_pages, groups, scroll, block_height, has_vars, is_static, minimod_based, mod_block_id, block_cache_time) VALUES
(1, 1, 'Site Navigator', 'L', 'B', 1, 'block_menus_nav.html', '', 'menu.png', 1, '0', '1,2,3,4,5,6,7,8,9,10', 0, 0, 0, 0, 0, 0, 0, 600),
(2, 2, 'Sub_Menu', 'L', 'B', 1, 'block_menus_sub.html', '', 'sub_menu.png', 1, '0', '1,2,3,4,5,6,7,8,9', 0, 0, 0, 0, 0, 0, 0, 600),
(3, 4, 'Links_Menu', 'L', 'B', 1, 'block_menus_links.html', '', 'sub_menu.png', 1, '0', '1,2,3,4,5,6,7,8,9', 0, 0, 0, 0, 0, 0, 0, 600),
(4, 6, 'Online Users', 'L', 'B', 1, 'block_online_users.html', '', 'online_users.png', 1, '0', '1,2,3,4,5,6,7,8,9', 0, 0, 0, 0, 0, 0, 0, 600),
(5, 7, 'Last Online', 'L', 'B', 1, 'block_last_online.html', 'k_last_online_vars.html', 'last_online.png', 0, '5', '2,3,4,5,6,7,8,9', 0, 0, 0, 1, 0, 0, 0, 300),
(6, 8, 'Search', 'L', 'B', 1, 'block_search.html', '', 'search.png', 1, '0', '2,3,4,5,6,7', 0, 0, 0, 0, 0, 0, 0, 600),
(7, 5, 'Categories/Forums', 'L', 'B', 1, 'block_forum_categories.html', '', 'categories.png', 1, '0', '1,2,3,4', 0, 0, 0, 0, 0, 0, 0, 667),
(8, 1, 'Welcome', 'C', 'B', 1, 'block_welcome.html', 'k_welcome_vars.html', 'welcome.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 999),
(9, 2, 'Announcements', 'C', 'B', 1, 'block_announcements.html', 'k_announce_vars.html', 'Announcements.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 300),
(10, 3, 'Recent Topics', 'C', 'B', 1, 'block_recent_topics_wide.html', 'k_recent_topics_vars.html', 'recent_topics.png', 0, '3', '2', 0, 0, 200, 1, 0, 0, 0, 20),
(11, 4, 'News Report', 'C', 'B', 1, 'block_news.html', 'k_news_vars.html', 'news.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 50),
(12, 1, 'User Information', 'R', 'H', 1, 'block_user_information.html', 'k_user_information_vars.html', 'user.png', 1, '0', '2,5,8,9', 0, 0, 0, 1, 0, 0, 0, 600),
(13, 2, 'The Team', 'R', 'B', 1, 'block_the_teams.html', 'k_the_teams_vars.html', 'team.png', 1, '0', '2,5,8,9', 0, 0, 0, 1, 0, 0, 0, 555),
(14, 3, 'Top Posters', 'R', 'B', 1, 'block_top_posters.html', 'k_top_posters_vars.html', 'top_posters.png', 1, '0', '2,5,8,9', 0, 0, 0, 1, 0, 0, 0, 200),
(15, 4, 'Most Active Topics', 'R', 'B', 1, 'block_top_topics.html', 'k_top_topics_vars.html', 'most_active_topics.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 100),
(16, 5, 'Clock', 'R', 'B', 1, 'block_clock.html', '', 'clock.png', 1, '0', '2', 0, 0, 0, 0, 0, 0, 0, 6009),
(17, 6, 'Links', 'R', 'B', 1, 'block_links.html', 'k_links_vars.html', 'links.png', 1, '0', '2,5,8,9', 0, 1, 0, 1, 0, 0, 0, 668),
(18, 5, 'Random Image', 'C', 'B', 1, 'block_random_image.html', '', 'random_image.png', 1, '0', '2', 0, 0, 0, 0, 0, 0, 0, 3200),
(19, 11, 'Poll', 'L', 'B', 1, 'block_poll.html', 'k_poll_vars.html', 'poll.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 0),
(20, 7, 'RSS', 'C', 'H', 0, 'block_rss_feeds.html', '', 'rss.png', 1, '', '2', 0, 0, 0, 0, 0, 0, 0, 123),
(21, 10, 'Mod Queue', 'L', 'B', 1, 'block_mod_queue.html', '', 'mod_queue.png', 1, '0', '1,2,3,4,6', 0, 0, 0, 0, 0, 0, 0, 3200),
(22, 3, 'Style Change', 'L', 'B', 1, 'block_style_select.html', '', 'style_select.png', 0, '2', '2,4', 0, 0, 0, 0, 0, 0, 0, 600),
(23, 8, 'YouTubes (KPE)', 'C', 'B', 1, 'block_youtube.html', 'k_youtube_vars.html', 'mp3.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 600),
(24, 9, 'Top Downloads', 'L', 'B', 1, 'block_top_downloads.html', 'k_top_downloads_vars.html', 'stats.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 300),
(25, 9, 'Members Avatars', 'C', 'B', 0, 'block_members_avatars.html', 'k_members_avatars_vars.html', 'members_avatars.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 300),
(26, 10, 'Donations Received', 'C', 'B', 1, 'block_donations.html', 'k_donations_vars.html', 'stats.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 600),
(27, 7, 'Top Downloads', 'R', 'B', 1, 'block_top_downloads.html', 'k_top_downloads_vars.html', 'top_downoads.png', 1, '0', '2', 0, 0, 0, 1, 0, 0, 0, 300);

CREATE TABLE IF NOT EXISTS phpbb_k_config (
  id smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  use_external_files tinyint(1) unsigned NOT NULL DEFAULT '0',
  update_files tinyint(1) unsigned NOT NULL DEFAULT '0',
  layout_default tinyint(1) unsigned NOT NULL DEFAULT '2',
  portal_config varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'Site',
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS phpbb_k_menus (
  m_id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  ndx mediumint(8) unsigned NOT NULL DEFAULT '0',
  menu_type smallint(4) unsigned NOT NULL DEFAULT '0',
  name varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  link_to varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  extern tinyint(1) unsigned NOT NULL DEFAULT '0',
  menu_icon varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'none.gif',
  append_sid tinyint(1) unsigned NOT NULL DEFAULT '1',
  append_uid tinyint(1) unsigned NOT NULL DEFAULT '0',
  view_all tinyint(1) unsigned NOT NULL DEFAULT '1',
  view_groups varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  soft_hr tinyint(1) unsigned NOT NULL DEFAULT '0',
  sub_heading tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (m_id)
);

INSERT INTO phpbb_k_menus (m_id, ndx, menu_type, name, link_to, extern, menu_icon, append_sid, append_uid, view_all, view_groups, soft_hr, sub_heading) VALUES
(1, 1, 1, 'Main Menu', '', 0, 'default.png', 0, 0, 1, '', 0, 1),
(2, 2, 1, 'Portal', 'portal.php', 0, 'portal.png', 0, 0, 1, '', 0, 0),
(3, 3, 1, 'Forum', 'index.php', 0, 'home2.png', 0, 0, 1, '0', 0, 0),
(4, 4, 1, 'Navigator', '', 0, 'default.png', 0, 0, 1, '', 0, 1),
(5, 5, 99, 'Album', 'inprogress.php', 0, 'gallery.png', 0, 0, 0, '', 0, 0),
(6, 6, 1, 'Bookmarks', 'ucp.php?i=main&amp;mode=bookmarks', 0, 'bookmark.png', 0, 0, 0, '2', 0, 0),
(7, 7, 99, 'Downloads', 'inprogress.php', 0, 'ff.png', 0, 0, 0, '', 0, 0),
(8, 8, 99, 'Links', 'inprogress.php', 0, 'link.gif', 0, 0, 0, '', 0, 0),
(9, 9, 1, 'Members', 'memberlist.php', 0, 'chat.png', 0, 0, 0, '2', 0, 0),
(10, 10, 99, 'Ratings', 'index.php', 0, 'rating.png', 0, 0, 0, '', 0, 0),
(11, 11, 1, 'Rules', 'basic_rules.php', 0, 'rules.png', 0, 0, 1, '', 0, 0),
(12, 12, 1, 'Staff', 'memberlist.php?mode=leaders', 0, 'staff.png', 0, 0, 0, '2', 0, 0),
(13, 13, 99, 'Statistics', 'inprogress.php', 0, 'pie.png', 0, 0, 0, '', 0, 0),
(14, 14, 1, 'UCP', 'ucp.php', 0, 'links.gif', 0, 0, 0, '2', 0, 0),
(15, 15, 99, 'Chat', 'chat/index.php', 0, 'chat.png', 0, 0, 0, '', 0, 0),
(16, 16, 1, 'Admin Menu', '', 0, 'default.png', 0, 0, 0, '5', 0, 1),
(17, 17, 1, 'ACP', 'adm/index.php', 0, 'acp.png', 1, 0, 0, '5', 0, 0),
(18, 1, 2, 'Mini Menu', '', 0, 'default.png', 0, 0, 1, '', 0, 1),
(19, 2, 2, 'Active Posts', 'search.php?search_id=active_topics', 0, 'links.png', 0, 0, 1, '', 0, 0),
(20, 1, 5, 'Lnks Menu', '', 0, 'default.png', 0, 0, 1, '', 0, 1),
(21, 2, 5, 'Kiss Portal dev. site', 'http://www.phpbbireland.com', 1, 'phpireland_globe.gif', 0, 0, 1, '', 0, 0),
(22, 3, 5, 'Stargate Portal', 'http://www.stargate-portal.com', 1, 'phpireland_globe.gif', 0, 0, 1, '', 0, 0),
(23, 4, 5, 'phpBB3', 'http://www.phpbb.com', 1, 'phpireland_globe.gif', 0, 0, 1, '', 0, 0),
(24, 3, 2, 'Mark forum as read', 'index.php?hash', 0, 'acp.png', 1, 0, 0, '2', 0, 0),
(25, 4, 2, 'Members Avatars', 'portal.php?page=avatars', 0, 'pengu.png', 0, 0, 0, '2', 0, 0);

CREATE TABLE IF NOT EXISTS phpbb_k_pages (
  page_id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  page_name varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (page_id)
);

INSERT INTO phpbb_k_pages (page_id, page_name) VALUES
(1, 'index'),
(2, 'portal'),
(3, 'viewforum'),
(4, 'viewtopic'),
(5, 'memberlist'),
(6, 'mcp'),
(7, 'ucp'),
(8, 'search'),
(9, 'faq'),
(10, 'posting');

CREATE TABLE IF NOT EXISTS phpbb_k_resources (
  id mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  word varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  type char(1) COLLATE utf8_bin NOT NULL DEFAULT 'V',
  PRIMARY KEY (id)
);


INSERT INTO phpbb_k_resources (id, word, type) VALUES
(1, 'phpBB', 'R'),
(2, '{PORTAL_VERSION}', 'V'),
(3, '{PORTAL_BUILD}', 'V'),
(4, '{VERSION}', 'V'),
(5, '{SITENAME}', 'V');

CREATE TABLE IF NOT EXISTS phpbb_k_variables (
  config_name varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  config_value varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  is_dynamic tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (config_name),
  KEY is_dynamic (is_dynamic)
);

INSERT INTO phpbb_k_variables (config_name, config_value, is_dynamic) VALUES
('base', '\\phpbbireland\\portal\\acp\\menus_module', 0),
('k_adm_block', '26', 0),
('k_allow_acronyms', '1', 0),
('k_allow_rand_avatar', '1', 0),
('k_allow_rotating_logos', '1', 0),
('k_announce_allow', '1', 0),
('k_announce_item_max_length', '255', 0),
('k_announce_to_display', '7', 0),
('k_announce_type', '0', 0),
('k_block_cache_time_default', '600', 0),
('k_block_cache_time_fast', '10', 0),
('k_block_cache_time_short', '10', 0),
('k_blocks_display_globally', '1', 0),
('k_blocks_enabled', '1', 0),
('k_blocks_width', '200', 0),
('k_bot_display_allow', '1', 0),
('k_bots_to_display', '0', 0),
('k_donation_years', '2012,2013,2014', 0),
('k_donations_max', '100', 0),
('k_footer_images_allow', '0', 0),
('k_landing_page', 'portal', 0),
('k_last_online_max', '10', 0),
('k_links_forum_id', '', 0),
('k_links_scroll_amount', '0', 0),
('k_links_scroll_direction', '0', 0),
('k_links_to_display', '5', 0),
('k_ma_avatar_max_width', '90', 0),
('k_ma_columns', '5', 0),
('k_ma_display_logged_in_only', '1', 0),
('k_ma_max_avatars', '0', 0),
('k_ma_rows', '3', 0),
('k_ma_user_active', '1', 0),
('k_ma_user_has_posted', '0', 0),
('k_max_block_avatar_height', '80', 0),
('k_max_block_avatar_width', '80', 0),
('k_mod_folders', '', 0),
('k_news_allow', '1', 0),
('k_news_item_max_length', '250', 0),
('k_news_items_to_display', '5', 0),
('k_news_type', '0', 0),
('k_poll_post_id', '2', 0),
('k_poll_view', '1', 0),
('k_poll_wide', '1', 0),
('k_post_types', '1', 0),
('k_quick_reply', '1', 0),
('k_recent_search_days', '90', 0),
('k_recent_topics_per_forum', '8', 0),
('k_recent_topics_search_exclude', '', 0),
('k_recent_topics_to_display', '20', 0),
('k_referrals_to_display', '', 0),
('k_smilies_show', '1', 0),
('k_teampage_memberships', '1', 0),
('k_teams', '4,5', 0),
('k_teams_display_this_many', '2', 0),
('k_teams_sort', 'default', 0),
('k_tooltips_active', '1', 0),
('k_tooltips_which', '1', 0),
('k_top_downloads_per_forum', '5', 0),
('k_top_downloads_search_days', '90', 0),
('k_top_downloads_search_exclude', '', 0),
('k_top_downloads_to_display', '20', 0),
('k_top_downloads_types', 'gif,png,jpg,zip,arc', 0),
('k_top_posters_show', '1', 0),
('k_top_posters_to_display', '10', 0),
('k_top_topics_days', '7', 0),
('k_top_topics_max', '5', 0),
('k_welcome_message', 'Welcome back [you]...&lt;br /&gt;&lt;br /&gt;&lt;strong&gt;{SITENAME} &lt;/strong&gt; is powered by &lt;strong&gt;phpBB3&lt;/strong&gt; and &lt;strong&gt; the Kiss Portal Engine &lt;/strong&gt;.\nMike', 0),
('k_yourtube_auto', '1', 0),
('k_yourtube_link', 'http://www.youtube.com/v/', 0),
('k_yourtube_link_limit', '10', 0),
('rss_feeds_cache_time', '3600', 0),
('rss_feeds_enabled', '1', 0),
('rss_feeds_items_limit', '5', 0),
('rss_feeds_random_limit', '4', 0),
('rss_feeds_type', 'fopen', 0);

CREATE TABLE IF NOT EXISTS phpbb_k_vars (
  config_name varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  config_value varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  is_dynamic tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (config_name),
  KEY is_dynamic (is_dynamic)
);

INSERT INTO phpbb_k_vars (config_name, config_value, is_dynamic) VALUES
('k_ma_user_has_posted', '0', 0),
('k_max_block_avatar_height', '80', 0),
('k_max_block_avatar_width', '80', 0),
('k_mod_folders', '', 0),
('k_news_allow', '1', 0),
('k_news_item_max_length', '250', 0),
('k_news_items_to_display', '5', 0),
('k_news_type', '0', 1),
('k_poll_post_id', '21', 0),
('k_poll_view', '1', 0),
('k_poll_wide', '0', 0),
('k_post_types', '1', 0),
('k_quick_reply', '1', 0),
('k_recent_search_days', '90', 0),
('k_recent_topics_per_forum', '5', 0),
('k_recent_topics_search_exclude', '', 0),
('k_recent_topics_to_display', '20', 0),
('k_referrals_to_display', '', 0),
('k_smilies_show', '1', 0),
('k_teampage_memberships', '0', 0),
('k_teams', '5,4', 0),
('k_teams_display_this_many', '2', 0),
('k_teams_sort', 'u.username', 0),
('k_tooltips_active', '1', 0),
('k_tooltips_which', '1', 0),
('k_top_downloads_per_forum', '10', 0),
('k_top_downloads_search_days', '90', 0),
('k_top_downloads_search_exclude', '', 0),
('k_top_downloads_to_display', '50', 0),
('k_top_downloads_types', 'gif,png,jpg,zip,arc', 0),
('k_top_posters_show', '1', 0),
('k_top_posters_to_display', '10', 0),
('k_top_topics_days', '7', 0),
('k_top_topics_max', '5', 0),
('k_yourtube_auto', '1', 0),
('k_yourtube_link', 'http://www.youtube.com/v/', 0),
('k_yourtube_link_limit', '5', 0),
('k_yourtube_list', '1,2,4', 0),
('rss_feeds_cache_time', '3600', 0),
('rss_feeds_enabled', '1', 0),
('rss_feeds_items_limit', '5', 0),
('rss_feeds_random_limit', '4', 0),
('rss_feeds_type', 'fopen', 0);

ALTER TABLE phpbb_users ADD user_left_blocks VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL ,
ADD user_right_blocks VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL ,
ADD user_center_blocks VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL ;
