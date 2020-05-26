<?php

namespace app\admin\validate;

use think\Validate;

class User extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
	    'user_name'     => 'require|length:2,16',
	    'phone'         => 'require|mobile',
	    'user_email'    => 'require|email',
	    'permissions'   => 'require',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'user_name.require'       => 101001, //用户名必须
        'user_name.length'        => 101002, //用户名需要在2-16之间
        'phone.require'           => 101003, //电话号码必须
        'phone.mobile'            => 101004, //电话号码格式不对
        'user_email.require'      => 101005, //邮箱必须
        'user_email.email'        => 101006, //邮箱格式不正确
        'permissions.require'     => 101007, //角色id必须
    ];

    /**
     * 验证的场景
     * @var array
     */
    protected $scene = [
        'index'        =>  [''],
        'add_img'      =>  ['user_name','phone','user_email','user_sex','permissions'],
        'edit'         =>  ['user_name','phone','user_email','user_sex','permissions'],
    ];

}
