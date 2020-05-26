<?php

namespace app\admin\validate;

use think\Validate;

class Role extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
	    'role_name' => 'require',
	    'access'    => 'require',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'role_name.require' => 1, //角色名必须
        'access.require'    => 2, //权限不能不空
    ];

    /**
     * 验证的场景
     * @var array
     */
    protected $scene = [
        'add_img'      =>  ['role_name','access'],
    ];

}
