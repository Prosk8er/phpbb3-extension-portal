<?php
/**
*
* @package migration
* @copyright (c) 2012 phpBB Group
* @license http://opensource.org/licenses/gpl-license.php GNU Public License v2
*
*/

namespace phpbbireland\portal\migrations\v10x;

class release_1_0_1 extends \phpbb\db\migration\migration
{
	public function effectively_installed()
	{
		return version_compare($this->config['portal_mod_version'], '1.0.1', '>=');
	}

	static public function depends_on()
	{
		return array('\phpbbireland\portal\migrations\v10x\release_1_0_0');
	}

	public function update_data()
	{
		return array(
			array('config.add', array('portal_pages', 1)),
			array('config.update', array('portal_mod_version', '1.0.1')),
		);
	}
}
