<?php

namespace app\admin\validate;

use think\Validate;

class LoveHistory extends Validate
{

    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
	    'history_year'     => 'require',
        'history_contents' => 'require',
	    'history_pic'      => 'require',
    ];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
        'history_contents.require' => 101, //描述不能为空
        'history_year.require'     => 102, //时间不能为空
        'history_year.unique'      => 103, //时间已经存在
        'history_pic.require'      => 104, //图片不能为空


    ];

    /**
     * 验证的场景
     * @var array
     */
    protected $scene = [
        'add_img'     => ['history_contents','history_year','history_pic'],
        'update_edit' => ['history_contents','history_year'],
    ];

}
