<?php

namespace app\admin\validate;

use think\Validate;

class HeadPic extends Validate
{
	/**
	 * 定义验证规则
	 * 格式：'字段名'    =>    ['规则1','规则2'...]
	 *
	 * @var array
	 */
	protected $rule = [
		'boy_head'  => 'require',
		'girl_head' => 'require',
	];
	/**
	 * 定义错误信息
	 * 格式：'字段名.规则名'    =>    '错误信息'
	 *
	 * @var array
	 */
	protected $message = [
		'boy_head.require'  => 101,  //红尘头像不能为空
		'girl_head.require' => 102,  //亚楠头像不能为空
	];
	/**
	 * 验证的场景
	 *
	 * @var array
	 */
	protected $scene = [
		'add' => ['boy_head', 'girl_head'],
	];
}
