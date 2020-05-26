<?php

namespace app\admin\validate;

use think\Validate;

class FineMark extends Validate
{
	/**
	 * 定义验证规则
	 * 格式：'字段名'    =>    ['规则1','规则2'...]
	 *
	 * @var array
	 */
	protected $rule = [
		'mark_title' => 'require',
		'mark_pic'   => 'require',
		'sort'       => 'require|number',
	];
	/**
	 * 定义错误信息
	 * 格式：'字段名.规则名'    =>    '错误信息'
	 *
	 * @var array
	 */
	protected $message = [
		'mark_title.require' => 101, //心动时刻不能为空
		'mark_pic.require'   => 103, //图片不能为空
		'sort.require'       => 104, //排序不能为空
		'sort.number'        => 105, //排序必须为正整数
	];
	/**
	 * 验证的场景
	 *
	 * @var array
	 */
	protected $scene = [
		'add_img'     => ['mark_title', 'mark_pic', 'sort'],
		'update_edit' => ['mark_title', 'sort'],
	];
}
