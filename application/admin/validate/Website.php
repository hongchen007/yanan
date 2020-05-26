<?php

namespace app\admin\validate;

use think\Validate;

class Website extends Validate
{
	/**
	 * 定义验证规则
	 * 格式：'字段名'    =>    ['规则1','规则2'...]
	 *
	 * @var array
	 */
	protected $rule = [
		'web_name'       => 'require',
		'head_title'     => 'require',
		'head_dec'       => 'require',
		'love_title'     => 'require',
		'agree_title'    => 'require',
		'agree_des'      => 'require',
		'wintness_title' => 'require',
		'web_logo'       => 'require',
		'footer'         => 'require',
	];
	/**
	 * 定义错误信息
	 * 格式：'字段名.规则名'    =>    '错误信息'
	 *
	 * @var array
	 */
	protected $message = [
		'web_name.require'       => 101,  //标题不能为空
		'head_title.require'     => 102,  //头部标题不能为空
		'head_dec.require'       => 103,  //简单描述不能为空
		'love_title.require'     => 104,  //故事标题不能为空
		'agree_title.require'    => 105,  //约定标题不能为空
		'agree_des.require'      => 106,  //约定内容不能为空
		'wintness_title.require' => 107,  //见证标题不能为空
		'footer.require'         => 109,  //底部描述不能为空
		'web_logo.require'       => 108,  //Logo图片不能为空
	];
	/**
	 * 验证的场景
	 *
	 * @var array
	 */
	protected $scene = [
		'add'  => ['web_name', 'head_title', 'head_dec', 'love_title', 'agree_title', 'agree_des', 'wintness_title', 'web_logo','footer'],
		'eait' => ['web_name', 'head_title', 'head_dec', 'love_title', 'agree_title', 'agree_des', 'wintness_title','footer'],
	];
}
